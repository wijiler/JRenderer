deviceWait :: (r:fwdpp_r) {
    vkDeviceWaitIdle(r.pipeline.lDevice);
}

draw_frame :: (r:*fwdpp_r,bg:Vector4) {
    begin := seconds_since_init();
    imageIndex = 0;
    //print("Frame %\n", frame_index);


    frame_index += 1;
    index := frame_index % FRAME_COUNT;

    vkWaitForFences(r.pipeline.lDevice, 1, *frameFences[index], VK_TRUE, U64_MAX);
    vkResetFences(r.pipeline.lDevice, 1, *frameFences[index]);

    record_buffers(r);

    submitInfo: VkSubmitInfo; 
    submitInfo.waitSemaphoreCount   = 1;
    submitInfo.pWaitSemaphores      = *imageAvailableSemaphores[index];
    submitInfo.pWaitDstStageMask    = VkPipelineStageFlags.[.COLOR_ATTACHMENT_OUTPUT_BIT].data;
    submitInfo.commandBufferCount   = 1;
    submitInfo.pCommandBuffers      = *commandBuffers[index];
    submitInfo.signalSemaphoreCount = 1;
    submitInfo.pSignalSemaphores    = *renderFinishedSemaphores[index];
    vkQueueSubmit(r.pipeline.gQueue, 1, *submitInfo, frameFences[index]);

    // Present.
    presentInfo: VkPresentInfoKHR;
    presentInfo.waitSemaphoreCount = 1;
    presentInfo.pWaitSemaphores    = *renderFinishedSemaphores[index];
    presentInfo.swapchainCount     = 1;
    presentInfo.pSwapchains        = *r.pipeline.sChain;
    presentInfo.pImageIndices      = *imageIndex;
    r.pipeline.g_Pipeline.presentinfo = presentInfo;
    vkQueuePresentKHR(r.pipeline.pQueue, *presentInfo);
    end := seconds_since_init();
    print("delta:%\nframerate:%\n", end - begin,frame_index/begin);
}



#scope_file
imageIndex: u32;
FRAME_COUNT :: 2;
frame_index := 0;
commandPool   : VkCommandPool;
commandBuffers: [FRAME_COUNT]VkCommandBuffer;
frameFences   : [FRAME_COUNT]VkFence; // Create with VK_FENCE_CREATE_SIGNALED_BIT.
imageAvailableSemaphores: [FRAME_COUNT]VkSemaphore;
renderFinishedSemaphores: [FRAME_COUNT]VkSemaphore;

#scope_module
record_buffers :: (r:*fwdpp_r) {
    
    index := frame_index % FRAME_COUNT;

    vkAcquireNextImageKHR(r.pipeline.lDevice, r.pipeline.sChain, U64_MAX, imageAvailableSemaphores[index], VK_NULL_HANDLE, *imageIndex);

    vkResetCommandBuffer(commandBuffers[index],0);

    beginInfo: VkCommandBufferBeginInfo;
    beginInfo.flags = .ONE_TIME_SUBMIT_BIT;
    vkBeginCommandBuffer(commandBuffers[index], *beginInfo);

    subResourceRange : VkImageSubresourceRange;
    {
        using subResourceRange;
        aspectMask     = .COLOR_BIT;
        baseMipLevel   = 0;
        levelCount     = VK_REMAINING_MIP_LEVELS;
        baseArrayLayer = 0;
        layerCount     = VK_REMAINING_ARRAY_LAYERS;
    }
    
    // Change layout of image to be optimal for clearing
    imgMemoryBarrier : VkImageMemoryBarrier;
    {
        using imgMemoryBarrier;
        srcAccessMask       = 0;
        dstAccessMask       = .TRANSFER_WRITE_BIT;
        oldLayout           = .UNDEFINED;
        newLayout           = .TRANSFER_DST_OPTIMAL;
        srcQueueFamilyIndex = r.pipeline.queueIndex;
        dstQueueFamilyIndex = r.pipeline.queueIndex;
        image               = r.pipeline.imgs[imageIndex];
        subresourceRange    = subResourceRange;
    }
    
    vkCmdPipelineBarrier(commandBuffers[index], .TRANSFER_BIT, .TRANSFER_BIT, 
                         0, 0, null, 0, null, 1, *imgMemoryBarrier);

    clearColor : VkClearColorValue;
    {
        // Pick a color with which to clear the screen.
        color1 := Vector4.{1,  0.15, 1, 1};
        color2 := Vector4.{0, 0, 0, 1};

        now := seconds_since_init();
        t := cos(cast(float) now) * .5 + .5;
        Clamp(*t, 0, 1);
        color := lerp(color1, color2, t);
        clearColor._float32 = color.component;
        // clearColor.float32 = float.[1, 1, 0, 1];
    }

    vkCmdClearColorImage(commandBuffers[index], r.pipeline.imgs[imageIndex], .TRANSFER_DST_OPTIMAL, *clearColor, 1, *subResourceRange);

    // Change layout of image to be optimal for presenting
    imgMemoryBarrier.srcAccessMask = .TRANSFER_WRITE_BIT;
    imgMemoryBarrier.dstAccessMask = .MEMORY_READ_BIT;
    imgMemoryBarrier.oldLayout     = .TRANSFER_DST_OPTIMAL;
    imgMemoryBarrier.newLayout     = .PRESENT_SRC_KHR;
    //imgMemoryBarrier.srcQueueFamilyIndex = queue_family_index;
    //imgMemoryBarrier.dstQueueFamilyIndex = queue_family_index;
    //imgMemoryBarrier.image = swapchainImages[imageIndex];
    //imgMemoryBarrier.subresourceRange = subResourceRange;
    vkCmdPipelineBarrier(commandBuffers[index], .TRANSFER_BIT, .BOTTOM_OF_PIPE_BIT,
        0, 0, null, 0, null, 1, *imgMemoryBarrier);

    vkEndCommandBuffer(commandBuffers[index]);
}


framebuffers :: (gpLine:*fwdpp_r) {
    gpLine.pipeline.g_Pipeline.fbuffers = NewArray(gpLine.pipeline.ImageViews.count,VkFramebuffer);

    for 0..gpLine.pipeline.ImageViews.count -1 {
        framebufferCI:VkFramebufferCreateInfo;
        framebufferCI.renderPass = gpLine.pipeline.g_Pipeline.rpass;
        framebufferCI.attachmentCount = 1;
        framebufferCI.pAttachments = *gpLine.pipeline.ImageViews[it];
        framebufferCI.width = gpLine.pipeline.Extent.width;
        framebufferCI.height = gpLine.pipeline.Extent.height;
        framebufferCI.layers = 1;
        result := vkCreateFramebuffer(gpLine.pipeline.lDevice,*framebufferCI,null,*gpLine.pipeline.g_Pipeline.fbuffers[it]);
        if result != .VK_SUCCESS {
            log(.Warning,sprint("Could not create framebuffer because:%\n",result));
        }
    }
}

init_cbuf :: (gpLine:*fwdpp_r) {

    commandPoolCreateInfo: VkCommandPoolCreateInfo;
    commandPoolCreateInfo.flags            = .RESET_COMMAND_BUFFER_BIT;
    commandPoolCreateInfo.queueFamilyIndex = gpLine.pipeline.queueIndex;
    vkCreateCommandPool(gpLine.pipeline.lDevice, *commandPoolCreateInfo, null, *commandPool);

    commandBufferAllocInfo: VkCommandBufferAllocateInfo;
    commandBufferAllocInfo.commandPool        = commandPool;
    commandBufferAllocInfo.level              = .PRIMARY;
    commandBufferAllocInfo.commandBufferCount = FRAME_COUNT;

    vkAllocateCommandBuffers(gpLine.pipeline.lDevice, *commandBufferAllocInfo, commandBuffers.data);

    semaphoreCreateInfo: VkSemaphoreCreateInfo;
    vkCreateSemaphore(gpLine.pipeline.lDevice, *semaphoreCreateInfo, null, *imageAvailableSemaphores[0]);
    vkCreateSemaphore(gpLine.pipeline.lDevice, *semaphoreCreateInfo, null, *imageAvailableSemaphores[1]);
    vkCreateSemaphore(gpLine.pipeline.lDevice, *semaphoreCreateInfo, null, *renderFinishedSemaphores[0]);
    vkCreateSemaphore(gpLine.pipeline.lDevice, *semaphoreCreateInfo, null, *renderFinishedSemaphores[1]);

    fenceCreateInfo: VkFenceCreateInfo;
    fenceCreateInfo.flags = .SIGNALED_BIT;

    vkCreateFence(gpLine.pipeline.lDevice, *fenceCreateInfo, null, *frameFences[0]);
    vkCreateFence(gpLine.pipeline.lDevice, *fenceCreateInfo, null, *frameFences[1]);

    gpLine.pipeline.g_Pipeline.commandPool = commandPool;
    gpLine.pipeline.g_Pipeline.commandBuffers = commandBuffers;
    gpLine.pipeline.g_Pipeline.sync.inFlight = frameFences;
    gpLine.pipeline.g_Pipeline.sync.imageAvailable = imageAvailableSemaphores;
    gpLine.pipeline.g_Pipeline.sync.renderFinished = renderFinishedSemaphores;

    print("Created command buffers");
}
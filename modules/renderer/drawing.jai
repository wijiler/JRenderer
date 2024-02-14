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

    //print("delta:%\nframerate:%\n", end - begin,frame_index/begin);
}



#scope_file
imageIndex: u32;
FRAME_COUNT :: 2;
frame_index := 0;
commandPool   : VkCommandPool;
commandBuffers: [FRAME_COUNT]VkCommandBuffer;
frameFences   : [FRAME_COUNT]VkFence;
imageAvailableSemaphores: [FRAME_COUNT]VkSemaphore;
renderFinishedSemaphores: [FRAME_COUNT]VkSemaphore;

#scope_module
draw_geometry :: (r:*fwdpp_r) {
    index := frame_index % FRAME_COUNT;


}


attachment_info :: (view:VkImageView,clear:*VkClearValue ,layout:VkImageLayout) -> VkRenderingAttachmentInfo
{
    colorAttachment:VkRenderingAttachmentInfo = .{};
    colorAttachment.sType = .VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO;
    colorAttachment.pNext = null;

    colorAttachment.imageView = view;
    colorAttachment.imageLayout = layout;
    colorAttachment.loadOp = ifx clear then .VK_ATTACHMENT_LOAD_OP_CLEAR else .VK_ATTACHMENT_LOAD_OP_LOAD;
    colorAttachment.storeOp = .VK_ATTACHMENT_STORE_OP_STORE;
    if (clear) {
        colorAttachment.clearValue = clear;
    }

    return colorAttachment;
}

depth_attachment_info :: (view:VkImageView, layout:VkImageLayout) -> VkRenderingAttachmentInfo
{
    depthAttachment: VkRenderingAttachmentInfo = .{};
    depthAttachment.sType = .VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO;
    depthAttachment.pNext = null;

    depthAttachment.imageView = view;
    depthAttachment.imageLayout = layout;
    depthAttachment.loadOp = VK_ATTACHMENT_LOAD_OP_CLEAR;
    depthAttachment.storeOp = VK_ATTACHMENT_STORE_OP_STORE;
    depthAttachment.clearValue.depthStencil.depth = 0;

    return depthAttachment;
}

rendering_info :: (renderExtent:VkExtent2D,  colorAttachment:*VkRenderingAttachmentInfo,depthAttachment:*VkRenderingAttachmentInfo) -> VkRenderingInfo
{
    renderInfo:VkRenderingInfo  = .{};
    renderInfo.sType = .VK_STRUCTURE_TYPE_RENDERING_INFO;
    renderInfo.pNext = null;

    renderInfo.renderArea = VkRect2D.{ VkOffset2D.{ 0, 0 }, renderExtent };
    renderInfo.layerCount = 1;
    renderInfo.colorAttachmentCount = 1;
    renderInfo.pColorAttachments = colorAttachment;
    renderInfo.pDepthAttachment = depthAttachment;
    renderInfo.pStencilAttachment = null;

    return renderInfo;
}

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

    vkCmdPipelineBarrier(commandBuffers[index], .TRANSFER_BIT, .BOTTOM_OF_PIPE_BIT,
        0, 0, null, 0, null, 1, *imgMemoryBarrier);


    cAttInfo:VkRenderingAttachmentInfo = attachment_info(r.pipeline.ImageViews[imageIndex],null,.VK_IMAGE_LAYOUT_GENERAL);
    renInf:VkRenderingInfo = rendering_info(r.pipeline.Extent,*cAttInfo,null);

    vkCmdBeginRendering(r.pipeline.g_Pipeline.commandBuffers[index],*renInf);// TODO: Error's here


    vkCmdBindPipeline(r.pipeline.g_Pipeline.commandBuffers[index], .VK_PIPELINE_BIND_POINT_GRAPHICS, r.pipeline.g_Pipeline.pipeline);

    scissor: VkRect2D = .{};
	scissor.offset.x = 0;
	scissor.offset.y = 0;
	scissor.extent.width = r.pipeline.Extent.width;
	scissor.extent.height = r.pipeline.Extent.height;

    vkCmdSetScissor(r.pipeline.g_Pipeline.commandBuffers[index], 0, 1, *scissor);

    viewport:VkViewport = .{};
	viewport.x = 0;
	viewport.y = 0;
	viewport.width  = xx r.pipeline.Extent.width;
	viewport.height = xx r.pipeline.Extent.height;
	viewport.minDepth = 0;
	viewport.maxDepth = 1;
    vkCmdSetViewport(r.pipeline.g_Pipeline.commandBuffers[index], 0, 1, *r.pipeline.g_Pipeline.viewport);

    vkCmdDraw(r.pipeline.g_Pipeline.commandBuffers[index], 3, 1, 0, 0);
    
    vkCmdEndRendering(commandBuffers[index]);

    vkEndCommandBuffer(commandBuffers[index]);
}


// framebuffers :: (gpLine:*fwdpp_r) {
//     gpLine.pipeline.g_Pipeline.fbuffers = NewArray(gpLine.pipeline.ImageViews.count,VkFramebuffer);

//     for 0..gpLine.pipeline.ImageViews.count -1 {
//         framebufferCI:VkFramebufferCreateInfo;
//         //framebufferCI.renderPass = gpLine.pipeline.g_Pipeline.rpass;
//         framebufferCI.attachmentCount = 1;
//         framebufferCI.pAttachments = *gpLine.pipeline.ImageViews[it];
//         framebufferCI.width = gpLine.pipeline.Extent.width;
//         framebufferCI.height = gpLine.pipeline.Extent.height;
//         framebufferCI.layers = 1;
//         result := vkCreateFramebuffer(gpLine.pipeline.lDevice,*framebufferCI,null,*gpLine.pipeline.g_Pipeline.fbuffers[it]);
//         if result != .VK_SUCCESS {
//             log(.Warning,sprint("Could not create framebuffer because:%\n",result));
//         }
//     }
// }

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
#import "Vulkan";

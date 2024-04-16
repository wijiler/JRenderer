// VK_RENDERER
Vk_Pipeline :: struct {
    inst: VkInstance = VK_NULL_HANDLE;
    pDevice: VkPhysicalDevice = VK_NULL_HANDLE;
    lDevice: VkDevice = VK_NULL_HANDLE;
    gQueue: VkQueue = VK_NULL_HANDLE;
    pQueue: VkQueue = VK_NULL_HANDLE;
    queueIndex:u32;
    surface: VkSurfaceKHR;
    sChain: VkSwapchainKHR = VK_NULL_HANDLE;
    imgs:[] VkImage;
    depthimg:VkImage;
    depthimgmem:VkDeviceMemory;
    depthImgView:VkImageView;
    Extent:VkExtent2D = .{};
    Format:VkFormat;
    ImageViews:[] VkImageView;
    g_Pipeline:graphics_pipeline;
}

#add_context vbufsize:int = 0;
#add_context ibufsize:int = 0;
#add_context indices:[] u32;
#add_context istaging_buffer:buffer = .{};
#add_context staging_buffer:buffer = .{};

// foward ++ renderer
fwdpp_r :: struct {
    pipeline:Vk_Pipeline;
    mesh:Mesh;
}

init_renderer :: (win:winfo_t) -> fwdpp_r {
    r:fwdpp_r = .{};

    r.pipeline = init_vk(win);

    get_image_views(*r.pipeline);
    
    

    create_g_pipeline(*r);

    return r;
}

load_mesh :: (r:*fwdpp_r,modelInf:MFFP_parser) {

    verts:[] Vector3;
    indices:[] u32;
    // we need to switch how we handle data based on file
    if modelInf.type=={
        case .P_3MF;
        vecs := buffer_2_vec(modelInf.vertex_data);
        //vecs = normalize_vec3_arr(vecs);
        verts = vecs;
        indices = modelInf.triangle_data;
        case;;
    }
    print("verts:%\nindices:%\n",verts,indices);
    vbufsize := verts.count * size_of(Vector3);
    ibufsize := indices.count * size_of(u32);
    r.mesh.vertexBuf = alloc_buffers(xx (vbufsize),.VERTEX_BUFFER_BIT | .TRANSFER_DST_BIT | .SHADER_DEVICE_ADDRESS_BIT,r,.GPU_ONLY);
    devAddrInfo:VkBufferDeviceAddressInfo = .{};
    devAddrInfo.pNext = null;
    devAddrInfo.buffer = r.mesh.vertexBuf.vBuffer;

    r.mesh.vertexLoc = vkGetBufferDeviceAddress(r.pipeline.lDevice,*devAddrInfo);
    
    r.mesh.indexBuf = alloc_buffers(xx ibufsize, .VK_BUFFER_USAGE_INDEX_BUFFER_BIT | .VK_BUFFER_USAGE_TRANSFER_DST_BIT,r,.GPU_ONLY);
 
    r.mesh.vertCount = indices.count ;

    vstaging_buffer := alloc_buffers(xx (vbufsize), .VK_BUFFER_USAGE_TRANSFER_SRC_BIT,r,.CPU_ONLY);

    data:*void;
    if vkMapMemory(r.pipeline.lDevice,vstaging_buffer.vkmem,0,xx (vbufsize),0,*data) != .VK_SUCCESS then exit(1);
    memcpy(data,verts.data,vbufsize);
    vkUnmapMemory(r.pipeline.lDevice,vstaging_buffer.vkmem);

    idata:*void;
    istaging_buffer := alloc_buffers(xx (ibufsize), .VK_BUFFER_USAGE_TRANSFER_SRC_BIT,r,.CPU_ONLY);

    if vkMapMemory(r.pipeline.lDevice,istaging_buffer.vkmem,0,xx (ibufsize),0,*idata) != .VK_SUCCESS then exit(1);
    memcpy(idata,indices.data,ibufsize);
    vkUnmapMemory(r.pipeline.lDevice,istaging_buffer.vkmem);

    print("%\n",data);
    print("%\n",vstaging_buffer.vkmem);
    context.indices = indices;
    context.ibufsize = ibufsize;
    context.vbufsize = vbufsize;
    context.staging_buffer = vstaging_buffer;
    context.istaging_buffer = istaging_buffer;
}
cleanup :: (r:fwdpp_r) {
    vkDestroySwapchainKHR(r.pipeline.lDevice,r.pipeline.sChain,null);
    for view: r.pipeline.ImageViews {
        vkDestroyImageView(r.pipeline.lDevice,view,null);
    }

    vkFreeMemory(r.pipeline.lDevice,context.staging_buffer.vkmem,null);
    vkFreeMemory(r.pipeline.lDevice,r.mesh.vertexBuf.vkmem,null);
    vkFreeMemory(r.pipeline.lDevice,r.mesh.indexBuf.vkmem,null);
    vkDestroyBuffer(r.pipeline.lDevice,r.mesh.indexBuf.vBuffer,null);
    vkDestroyBuffer(r.pipeline.lDevice,r.mesh.vertexBuf.vBuffer,null);
    vkDestroySemaphore(r.pipeline.lDevice,r.pipeline.g_Pipeline.sync.imageAvailable[0],null);
    vkDestroySemaphore(r.pipeline.lDevice,r.pipeline.g_Pipeline.sync.renderFinished[0],null);
    vkDestroyFence(r.pipeline.lDevice,r.pipeline.g_Pipeline.sync.inFlight[0],null);
    vkDestroySemaphore(r.pipeline.lDevice,r.pipeline.g_Pipeline.sync.imageAvailable[1],null);
    vkDestroySemaphore(r.pipeline.lDevice,r.pipeline.g_Pipeline.sync.renderFinished[1],null);
    vkDestroyFence(r.pipeline.lDevice,r.pipeline.g_Pipeline.sync.inFlight[1],null);
    vkDestroyCommandPool(r.pipeline.lDevice,r.pipeline.g_Pipeline.commandPool,null);
    vkDestroySurfaceKHR(r.pipeline.inst,r.pipeline.surface,null);
    vkDestroyPipeline(r.pipeline.lDevice, r.pipeline.g_Pipeline.pipeline, null);
    vkDestroyPipelineLayout(r.pipeline.lDevice, r.pipeline.g_Pipeline.plLayout, null);
    vkDestroyShaderModule(r.pipeline.lDevice,r.pipeline.g_Pipeline.mainshaders[0],null);
    vkDestroyShaderModule(r.pipeline.lDevice,r.pipeline.g_Pipeline.mainshaders[1],null);
    
    vkDestroyDevice(r.pipeline.lDevice,null);
    vkDestroyInstance(r.pipeline.inst,null);
}

#scope_module
Copy_bufs :: (r:fwdpp_r) {
	vbufcopy:VkBufferCopy = .{};
	vbufcopy.dstOffset = 0;
	vbufcopy.srcOffset = 0;
	vbufcopy.size = xx context.vbufsize;	

	vkCmdCopyBuffer(r.pipeline.g_Pipeline.commandBuffers[cmdIndex],context.staging_buffer.vBuffer,r.mesh.vertexBuf.vBuffer,1,*vbufcopy);

	ibufcopy:VkBufferCopy = .{};
	ibufcopy.dstOffset = 0;
	ibufcopy.srcOffset = 0;
	ibufcopy.size = xx context.ibufsize;	

	vkCmdCopyBuffer(r.pipeline.g_Pipeline.commandBuffers[cmdIndex],context.istaging_buffer.vBuffer,r.mesh.indexBuf.vBuffer,1,*ibufcopy);

    vkDestroyBuffer(r.pipeline.lDevice,context.staging_buffer.vBuffer,null);
    vkDestroyBuffer(r.pipeline.lDevice,context.istaging_buffer.vBuffer,null);
}


device_extensions:[] *u8 = .[
    VK_KHR_SWAPCHAIN_EXTENSION_NAME.data,
    VK_KHR_PIPELINE_LIBRARY_EXTENSION_NAME.data,
    VK_EXT_GRAPHICS_PIPELINE_LIBRARY_EXTENSION_NAME.data,
    VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME.data,
    VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME.data,
    VK_KHR_DYNAMIC_RENDERING_EXTENSION_NAME.data,
    VK_KHR_SYNCHRONIZATION_2_EXTENSION_NAME.data,
    VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME.data,
    VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME.data,
];
#if OS == .WINDOWS {
    extensions:[] *u8 = .[
        VK_KHR_SURFACE_EXTENSION_NAME.data,
        VK_KHR_WIN32_SURFACE_EXTENSION_NAME.data,
        VK_EXT_DEBUG_UTILS_EXTENSION_NAME.data,
    ];

}

graphics_pipeline :: struct {
    mainshaders:[2] VkShaderModule;
    dynamic_states:[2] VkDynamicState = .[.VK_DYNAMIC_STATE_VIEWPORT,.VK_DYNAMIC_STATE_SCISSOR];
    viewport:VkViewport = .{};
    scissor:VkRect2D = .{};
    states:[8] *void;
    plLayout:VkPipelineLayout;
    //rpass:VkRenderPass;
    pipeline:VkPipeline;
    //fbuffers:[] VkFramebuffer;
    commandPool:VkCommandPool;
    commandBuffers:[]VkCommandBuffer;
    sync:synchronization_data = .{};
    presentinfo:VkPresentInfoKHR = .{};
    renInfo:VkPipelineRenderingCreateInfo = .{};
}

synchronization_data :: struct {
    imageAvailable:[] VkSemaphore;
    renderFinished:[] VkSemaphore;
    inFlight:[] VkFence;
}

create_g_pipeline :: (r:*fwdpp_r) {
    gpLine:graphics_pipeline = .{};

    #import "File";

    posbufferDesc:VkVertexInputBindingDescription = .{}; 


    posbufferDesc.binding = 0;
    posbufferDesc.stride = size_of(Vector3);
    posbufferDesc.inputRate = 0; // vertex
    
    posAttrDesc:VkVertexInputAttributeDescription = .{};


    posAttrDesc.location = 0;
    posAttrDesc.binding = 0;
    posAttrDesc.offset = 0;
    posAttrDesc.format = .VK_FORMAT_R32G32B32_SFLOAT ;

    vertInputSTA:VkPipelineVertexInputStateCreateInfo = .{};
    vertInputSTA.pVertexBindingDescriptions = *posbufferDesc;
    vertInputSTA.vertexBindingDescriptionCount = 1;
    vertInputSTA.vertexAttributeDescriptionCount = 1;
    vertInputSTA.pVertexAttributeDescriptions = *posAttrDesc;

    // Reading the shader files
    vsha,vlen := read_spirv_file("shaders/vtriangle.spv");
    fsha,flen := read_spirv_file("shaders/ftriangle.spv");
    vmod:VkShaderModule;
    fmod:VkShaderModule;
    {
        cInfo:VkShaderModuleCreateInfo = .{};
        cInfo.codeSize = xx vlen; // u8 == 1 byte so count == bytesize
        cInfo.pCode = vsha;
        result := vkCreateShaderModule(r.pipeline.lDevice, *cInfo, null, *vmod);
        if result != .VK_SUCCESS {
            log(.Error,sprint("Could not compile vshader because %",result * -1));
        }
    }
    {
        cInfo:VkShaderModuleCreateInfo = .{};
        cInfo.codeSize = xx flen;
        cInfo.pCode = fsha;
        result := vkCreateShaderModule(r.pipeline.lDevice, *cInfo, null, *fmod);
        if result != .VK_SUCCESS {
            log(.Error,sprint("Could not compile fshader because %",result));
        }
    }
    gpLine.mainshaders = .[vmod,fmod];
    log(.Info,"Succesfully compiled shaders");

    // Fixed function bs
    v_stageinf:VkPipelineShaderStageCreateInfo = .{};
    v_stageinf.pNext = null;
    v_stageinf.flags = 0;
    v_stageinf.stage = .VK_SHADER_STAGE_VERTEX_BIT;
    v_stageinf.module = vmod;
    v_stageinf.pName = "main";

    f_stageinf:VkPipelineShaderStageCreateInfo = .{};
    f_stageinf.pNext = null;
    f_stageinf.flags = 0;
    f_stageinf.stage = .VK_SHADER_STAGE_FRAGMENT_BIT;
    f_stageinf.module = fmod;
    f_stageinf.pName = "main";

    stages:[2] VkPipelineShaderStageCreateInfo = .[v_stageinf,f_stageinf];

    r.pipeline.g_Pipeline.dynamic_states = .[.VK_DYNAMIC_STATE_VIEWPORT,.VK_DYNAMIC_STATE_SCISSOR];

    stateCInfo:VkPipelineDynamicStateCreateInfo = .{};
    stateCInfo.pNext = null;
    stateCInfo.flags = 0;
    stateCInfo.pDynamicStates = r.pipeline.g_Pipeline.dynamic_states.data;
    stateCInfo.dynamicStateCount = 2;



    asmcInfo:VkPipelineInputAssemblyStateCreateInfo = .{};
    asmcInfo.pNext = null;
    asmcInfo.flags = 0;
    asmcInfo.topology = .VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST;
    asmcInfo.primitiveRestartEnable = VK_FALSE;

    gpLine.viewport.x = 0; gpLine.viewport.y = 0; 
    gpLine.viewport.width = xx r.pipeline.Extent.width; gpLine.viewport.height = xx r.pipeline.Extent.height;

    gpLine.viewport.minDepth = -1000;
    gpLine.viewport.maxDepth = 1000;

    vpState:VkPipelineViewportStateCreateInfo = .{};
    vpState.pNext = null;
    vpState.flags = 0;
    vpState.viewportCount = 1;
    vpState.pViewports = null;
    vpState.scissorCount = 1;
    vpState.pScissors = null;

    rast:VkPipelineRasterizationStateCreateInfo = .{};

    rast.polygonMode = .VK_POLYGON_MODE_FILL;
    rast.lineWidth = 1.0;
    //rast.cullMode = .BACK_BIT;
    rast.frontFace = .VK_FRONT_FACE_CLOCKWISE;
    rast.depthClampEnable = VK_TRUE;
    rast.flags = 0;
    rast.rasterizerDiscardEnable = VK_FALSE;
    rast.depthBiasEnable = VK_FALSE;
    // rast.depthBiasConstantFactor = 1.0;
    // rast.depthBiasClamp = 1.0;
    // rast.depthBiasSlopeFactor = 1.0;

    multisampling:VkPipelineMultisampleStateCreateInfo = .{};
    multisampling.pNext = null;
    multisampling.flags = 0;

    multisampling.sampleShadingEnable = VK_TRUE;
    multisampling.rasterizationSamples = .VK_SAMPLE_COUNT_1_BIT;


    colorBlendAtt:VkPipelineColorBlendAttachmentState = .{};

    colorBlendAtt.colorWriteMask = .VK_COLOR_COMPONENT_R_BIT | .VK_COLOR_COMPONENT_G_BIT | .VK_COLOR_COMPONENT_B_BIT | .VK_COLOR_COMPONENT_A_BIT;
    colorBlendAtt.blendEnable = VK_TRUE;
    colorBlendAtt.srcColorBlendFactor = .VK_BLEND_FACTOR_SRC_ALPHA;
    colorBlendAtt.dstColorBlendFactor = .VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA;
    colorBlendAtt.colorBlendOp = .VK_BLEND_OP_ADD;
    colorBlendAtt.srcAlphaBlendFactor = .VK_BLEND_FACTOR_ONE;
    colorBlendAtt.dstAlphaBlendFactor = .VK_BLEND_FACTOR_ZERO;
    colorBlendAtt.alphaBlendOp = .VK_BLEND_OP_ADD;

    depthStencilCI: VkPipelineDepthStencilStateCreateInfo = .{};
    depthStencilCI.pNext = null;
    depthStencilCI.depthTestEnable = VK_TRUE;
	depthStencilCI.depthWriteEnable = VK_TRUE;
	depthStencilCI.depthCompareOp = .GREATER_OR_EQUAL;
	depthStencilCI.depthBoundsTestEnable = VK_TRUE;
	depthStencilCI.stencilTestEnable = VK_FALSE;
	depthStencilCI.front = .{};
	depthStencilCI.back = .{};
	depthStencilCI.minDepthBounds = -1000;
	depthStencilCI.maxDepthBounds= 1000;

    colorBlend: VkPipelineColorBlendStateCreateInfo = .{};
    colorBlend.logicOpEnable = VK_FALSE;
    colorBlend.attachmentCount = 1;
    colorBlend.pAttachments = *colorBlendAtt;
    colorBlend.blendConstants = .[1,1,1,1];

    gpLine.states = .[*stages,*stateCInfo,*asmcInfo,*vpState,*rast,*multisampling,*colorBlendAtt,*colorBlend];
    bufRange:VkPushConstantRange = .{};
    bufRange.offset = 0;
    bufRange.size = size_of(World);
    bufRange.stageFlags = .VK_SHADER_STAGE_VERTEX_BIT;
    

    {
        plcInf:VkPipelineLayoutCreateInfo = .{};
        plcInf.setLayoutCount = 0;
        plcInf.pSetLayouts = null;

        plcInf.pPushConstantRanges = *bufRange;
        plcInf.pushConstantRangeCount = 1;


        result := vkCreatePipelineLayout(r.pipeline.lDevice,*plcInf,null,*gpLine.plLayout);
        if result != .VK_SUCCESS {
            log(.Error,sprint("couldnt create pipeline layout because %\n",result));
        }
        log(.Info,"Succesfully created pipeline layout\n");
    }

    rInfo:VkPipelineRenderingCreateInfo = .{};

    r.pipeline.g_Pipeline.renInfo = rInfo;

    //gpLine.rpass = create_render_passes(r);

    pipeCInfo:VkGraphicsPipelineCreateInfo = .{};

    pipeCInfo.pNext = *rInfo;

    pipeCInfo.stageCount = stages.count;
    pipeCInfo.pStages = stages.data;
    pipeCInfo.pVertexInputState = *vertInputSTA;
    pipeCInfo.pInputAssemblyState = *asmcInfo;
    pipeCInfo.pViewportState = *vpState;
    pipeCInfo.pRasterizationState = *rast;
    pipeCInfo.pMultisampleState = *multisampling;
    pipeCInfo.pDepthStencilState = *depthStencilCI;
    pipeCInfo.pColorBlendState = *colorBlend;
    pipeCInfo.pDynamicState = *stateCInfo;
    pipeCInfo.layout = gpLine.plLayout;
    pipeCInfo.renderPass = VK_NULL_HANDLE;
    pipeCInfo.subpass = 0;
    pipeCInfo.basePipelineHandle = VK_NULL_HANDLE;
    pipeCInfo.basePipelineIndex = -1;

    rInfo.colorAttachmentCount = 1;
    rInfo.pColorAttachmentFormats = *r.pipeline.Format;
    rInfo.depthAttachmentFormat = .VK_FORMAT_D32_SFLOAT_S8_UINT;

        {
        result := vkCreateGraphicsPipelines(r.pipeline.lDevice,VK_NULL_HANDLE,1,*pipeCInfo,null,*gpLine.pipeline);
        if result != .VK_SUCCESS {
            log(.Error,sprint("Could not create pipeline because %\n",result));
        }
        log(.Info,"Succesfully made the graphics pipeline");
    }

    r.pipeline.g_Pipeline = gpLine;

   //framebuffers (r);

    init_cbuf(r);
}


get_image_views :: (pipeline:*Vk_Pipeline) {
    pipeline.ImageViews = NewArray(pipeline.imgs.count,VkImageView);
    for 0..pipeline.imgs.count - 1 {
        createInfo: VkImageViewCreateInfo = .{};
        createInfo.image = pipeline.imgs[it];

        createInfo.viewType = .VK_IMAGE_VIEW_TYPE_2D;
        createInfo.format = pipeline.Format;

        createInfo.components.r = .VK_COMPONENT_SWIZZLE_IDENTITY;
        createInfo.components.g = .VK_COMPONENT_SWIZZLE_IDENTITY;
        createInfo.components.b = .VK_COMPONENT_SWIZZLE_IDENTITY;
        createInfo.components.a = .VK_COMPONENT_SWIZZLE_IDENTITY;

        createInfo.subresourceRange.aspectMask = .VK_IMAGE_ASPECT_COLOR_BIT;
        createInfo.subresourceRange.baseMipLevel = 0;
        createInfo.subresourceRange.levelCount = 1;
        createInfo.subresourceRange.baseArrayLayer = 0;
        createInfo.subresourceRange.layerCount = 1;
        result := vkCreateImageView(pipeline.lDevice, *createInfo, null, *pipeline.ImageViews[it]);
        if result != .VK_SUCCESS {
            log(.Warning,sprint("Could not create image view % because %",createInfo.image,result));
        }
    }
    // depth buffering
    dimgCreateInfo:VkImageCreateInfo = .{};
    dimgCreateInfo.imageType = ._3D;
    dimgCreateInfo.extent.width = pipeline.Extent.width;
    dimgCreateInfo.extent.height = pipeline.Extent.height;
    dimgCreateInfo.extent.depth = 1;
    dimgCreateInfo.mipLevels = 1;
    dimgCreateInfo.arrayLayers = 1;
    dimgCreateInfo.format = .VK_FORMAT_D32_SFLOAT_S8_UINT;
    dimgCreateInfo.tiling = .VK_IMAGE_TILING_OPTIMAL;
    dimgCreateInfo.initialLayout = .VK_IMAGE_LAYOUT_UNDEFINED;
    dimgCreateInfo.usage = .VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT;
    dimgCreateInfo.samples = .VK_SAMPLE_COUNT_1_BIT;
    dimgCreateInfo.sharingMode = .VK_SHARING_MODE_EXCLUSIVE;
    vkCreateImage(pipeline.lDevice,*dimgCreateInfo,null,*pipeline.depthimg);
    pmemRequirements:VkPhysicalDeviceMemoryProperties = .{};
    vkGetPhysicalDeviceMemoryProperties(pipeline.pDevice,*pmemRequirements);
    
    memRequirements:VkMemoryRequirements = .{};
    vkGetImageMemoryRequirements(pipeline.lDevice, pipeline.depthimg, *memRequirements);

    allocInfo:VkMemoryAllocateInfo = .{};
    allocInfo.sType = .VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
    allocInfo.allocationSize = memRequirements.size;
    memindex:u32;

    for 0..pmemRequirements.memoryTypes.count - 1 {
        if (memRequirements.memoryTypeBits & (1 << it)) && (pmemRequirements.memoryTypes[it].propertyFlags & .VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT) == .VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT { memindex = xx  it; break; } 
    }

    allocInfo.memoryTypeIndex = memindex;

    if (vkAllocateMemory(pipeline.lDevice, *allocInfo, null, *pipeline.depthimgmem) != .VK_SUCCESS) {
        log(.Error, "could not create  device memory");
    }
    vkBindImageMemory(pipeline.lDevice, pipeline.depthimg, pipeline.depthimgmem, 0);
    //vkCreateImage(pipeline.Extent.width,pipeline.Extent.height,.VK_FORMAT_D32_SFLOAT_S8_UINT,.VK_IMAGE_TILING_OPTIMAL,.VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT,*pipeline.depthimg,*pipeline.depthimgmem);
    dCreateInfo: VkImageViewCreateInfo = .{};
    dCreateInfo.image = pipeline.depthimg;
    dCreateInfo.viewType = .VK_IMAGE_VIEW_TYPE_3D;
    dCreateInfo.format = .VK_FORMAT_D32_SFLOAT_S8_UINT;

    dCreateInfo.components.r = .VK_COMPONENT_SWIZZLE_IDENTITY;
    dCreateInfo.components.g = .VK_COMPONENT_SWIZZLE_IDENTITY;
    dCreateInfo.components.b = .VK_COMPONENT_SWIZZLE_IDENTITY;
    dCreateInfo.components.a = .VK_COMPONENT_SWIZZLE_IDENTITY;

    dCreateInfo.subresourceRange.aspectMask = .VK_IMAGE_ASPECT_DEPTH_BIT | .VK_IMAGE_ASPECT_STENCIL_BIT;
    dCreateInfo.subresourceRange.baseMipLevel = 0;
    dCreateInfo.subresourceRange.levelCount = 1;
    dCreateInfo.subresourceRange.baseArrayLayer = 0;
    dCreateInfo.subresourceRange.layerCount = 1;
    result := vkCreateImageView(pipeline.lDevice, *dCreateInfo, null, *pipeline.depthImgView);
    if result != .VK_SUCCESS {
        log(.Warning,sprint("Could not create image view % because %",dCreateInfo.image,result));
    }
}


#if DEBUG {
    enabled_layers:[1] *u8 = .["VK_LAYER_KHRONOS_validation".data];

    vulkan_debug_callback :: (message_severity : VkDebugUtilsMessageSeverityFlagBitsEXT,
                        message_types : VkDebugUtilsMessageTypeFlagsEXT,
                        callback_data : *VkDebugUtilsMessengerCallbackDataEXT,
                        user_data : *void) -> VkBool32 #c_call {
        
        context_pointer := cast(*Context)user_data;
        push_context context_pointer.* {
            if (message_severity & .VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT && context.log_level != .VERBOSE && context.log_level != .VERY_VERBOSE) return VK_FALSE;
            message := to_string(callback_data.pMessage);
            if (message_severity & .VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT) {
                log_error("%", message);
            } else {
                log("%", message);
            }
        }
        
        return VK_FALSE;
    }
}
init_vk :: (win:winfo_t) -> Vk_Pipeline {
    // Instance creation
    vk:Vk_Pipeline = .{};

    appinf:VkApplicationInfo = .{};
    appinf.pApplicationName = "Jcad";
    appinf.applicationVersion = VK_MAKE_VERSION(1, 0, 0);
    appinf.pEngineName = "No Engine";
    appinf.engineVersion = VK_MAKE_VERSION(1, 3, 0);
    appinf.apiVersion = VK_MAKE_VERSION(1, 3, 0);

    createinf:VkInstanceCreateInfo = .{};
    createinf.pApplicationInfo = *appinf;

    createinf.enabledExtensionCount = xx extensions.count;
    createinf.ppEnabledExtensionNames = extensions.data;
    #if DEBUG {
    createinf.enabledLayerCount = 1;
    createinf.ppEnabledLayerNames = enabled_layers.data;

    debug_create_info: VkDebugUtilsMessengerCreateInfoEXT = .{};
    debug_create_info.messageSeverity = .VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT | .VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT | .VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT;
    debug_create_info.messageType = .VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT | .VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT | .VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT;
    debug_create_info.pfnUserCallback = vulkan_debug_callback;
    debug_create_info.pUserData = *context;

    createinf.pNext = *debug_create_info;
    }

    {
        result := vkCreateInstance(*createinf,null,*vk.inst);

        if result != .VK_SUCCESS {
            log(.Error,sprint("Could not create instance due to, %\n",result));
        }
    }

    log(.Info,"VK init Success\n");
    // Physical device
    devCount:u32 = 0;

    vkEnumeratePhysicalDevices(vk.inst, *devCount, null);
    devices:[8] VkPhysicalDevice;
    vkEnumeratePhysicalDevices(vk.inst,*devCount,devices.data);

    assert(devCount != 0,"No gpus found");

    graphics_queue:u32 = 0;
    devfeatures:VkPhysicalDeviceFeatures = .{};

    vk.pDevice,graphics_queue,devfeatures = is_device_valid(devices,vk.surface);

    if vk.pDevice == VK_NULL_HANDLE {
        print("%\n",devices);
        log(.Error, "Could not find a suitable device");
    }

    log(.Info,"found a GPU!\n");

    vk.queueIndex = graphics_queue;

    // Logical device

    createqInfo:VkDeviceQueueCreateInfo = .{};

    createqInfo.queueFamilyIndex = graphics_queue;
    createqInfo.queueCount = 1;

    priority:float32 = 1.0;

    createqInfo.pQueuePriorities = *priority;

    enabledynRend:VkPhysicalDeviceVulkan13Features = .{};
    enabledynRend.dynamicRendering = VK_TRUE;
    enabledynRend.synchronization2 = VK_TRUE;

    enabledevADDR:VkPhysicalDeviceVulkan12Features;
    enabledevADDR.bufferDeviceAddress = VK_TRUE;
    enabledevADDR.descriptorIndexing  = VK_TRUE;

    enabledynRend.pNext = *enabledevADDR;

    enableDynamicVertexInput: VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT = .{};
    enableDynamicVertexInput.vertexInputDynamicState = VK_TRUE;

    //enabledevADDR.pNext = *enableDynamicVertexInput;

    ldCreateInfo:VkDeviceCreateInfo = .{};
    ldCreateInfo.pNext = *enabledynRend;
    ldCreateInfo.pQueueCreateInfos = *createqInfo;
    ldCreateInfo.queueCreateInfoCount = 1;
    ldCreateInfo.pEnabledFeatures = *devfeatures;

    ldCreateInfo.enabledExtensionCount = xx device_extensions.count;
    ldCreateInfo.ppEnabledExtensionNames = device_extensions.data;

    ldCreateInfo.enabledLayerCount = 0;
    {
        result := vkCreateDevice(vk.pDevice,*ldCreateInfo,null,*vk.lDevice);
        if result != .VK_SUCCESS {
            log(.Error,sprint("could not create logical device because %\n",result));
        }
    }
    log(.Info,"succesfully created logical device");

    vkGetDeviceQueue(vk.lDevice,graphics_queue, 0,*vk.gQueue);

    // Window surface creation

    #if OS == .WINDOWS {
        #import "Windows";

        createwSurfaceinf: VkWin32SurfaceCreateInfoKHR = .{};
        createwSurfaceinf.hwnd = win.whnd;
        createwSurfaceinf.hinstance = GetModuleHandleW(null);
        {
            result := vkCreateWin32SurfaceKHR(vk.inst,*createwSurfaceinf,null,*vk.surface);
            if result != .VK_SUCCESS {
                log(.Error,sprint("could not make window surface because %\n",result));
            }
        }
    }
    // TODO: add linux support
    else
        log(.Error,"No support for your os and vulkan");


    log(.Info,"Succesfully created a window surface");

    // Create presentQueue
    {
        createqInfo:VkDeviceQueueCreateInfo = .{};

        createqInfo.queueFamilyIndex = graphics_queue;
        createqInfo.queueCount = 1;

        priority:float32 = 1.0;

        createqInfo.pQueuePriorities = *priority;

        ldCreateInfo:VkDeviceCreateInfo = .{};
        ldCreateInfo.pQueueCreateInfos = *createqInfo;
        ldCreateInfo.queueCreateInfoCount = 1;
        ldCreateInfo.pEnabledFeatures = *devfeatures;

        ldCreateInfo.enabledExtensionCount = xx  device_extensions.count;
        ldCreateInfo.ppEnabledExtensionNames = device_extensions.data;

        vkGetDeviceQueue(vk.lDevice,graphics_queue, 0, *vk.pQueue);
    }

    // Swapchain

    surfacecapabilites:VkSurfaceCapabilitiesKHR = .{};

    vkGetPhysicalDeviceSurfaceCapabilitiesKHR(vk.pDevice,vk.surface,*surfacecapabilites);

    formatCount:u32 = 0;
    formats:[] VkSurfaceFormatKHR = .{};
    vkGetPhysicalDeviceSurfaceFormatsKHR(vk.pDevice, vk.surface, *formatCount, null);
    formats = NewArray(formatCount,VkSurfaceFormatKHR);
    vkGetPhysicalDeviceSurfaceFormatsKHR(vk.pDevice, vk.surface, *formatCount, formats.data);

    presentModeCount:u32 = 0 ;
    vkGetPhysicalDeviceSurfacePresentModesKHR(vk.pDevice, vk.surface, *presentModeCount, null);
    modes:[..] VkPresentModeKHR;
    vkGetPhysicalDeviceSurfacePresentModesKHR(vk.pDevice, vk.surface, *presentModeCount, modes.data);

    imgformat,mode,extent := choose_schain_settings(formats,modes,surfacecapabilites,win);

    imgcount := surfacecapabilites.minImageCount + 1;

    if surfacecapabilites.maxImageCount > 0 && imgcount > surfacecapabilites.maxImageCount {
        imgcount = surfacecapabilites.maxImageCount;
    }

    createscInfo:VkSwapchainCreateInfoKHR = .{};

    createscInfo.surface = vk.surface;
    createscInfo.minImageCount = imgcount;
    createscInfo.imageFormat = imgformat.format;
    createscInfo.imageColorSpace = imgformat.colorSpace;
    createscInfo.imageExtent = extent;
    createscInfo.imageArrayLayers = 1;
    createscInfo.imageUsage = .VK_IMAGE_USAGE_TRANSFER_DST_BIT | .VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT;

    // our graphics queue is the same as the present queue
    createscInfo.imageSharingMode = .VK_SHARING_MODE_EXCLUSIVE;

    createscInfo.preTransform = surfacecapabilites.currentTransform;

    createscInfo.compositeAlpha = .VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR;

    createscInfo.presentMode = mode;
    createscInfo.clipped = VK_TRUE;

    createscInfo.oldSwapchain = VK_NULL_HANDLE;


    {
        result := vkCreateSwapchainKHR(vk.lDevice,*createscInfo,null,*vk.sChain);
        if result != .VK_SUCCESS {
            log(.Error,sprint("Could not create swapchain because %\n scCreate:%\n",result,createscInfo));
        }
    }

    log(.Info,"Succesfully created swapchain");

    // get vkImages

    vkGetSwapchainImagesKHR(vk.lDevice, vk.sChain, *imgcount, null);
    vk.imgs = NewArray(imgcount,VkImage);
    vkGetSwapchainImagesKHR(vk.lDevice, vk.sChain, *imgcount, vk.imgs.data);

    vk.Extent = extent;
    vk.Format = imgformat.format;

    return vk;
}


is_device_valid :: (devices:[] VkPhysicalDevice,surface:VkSurfaceKHR) -> VkPhysicalDevice,u32,VkPhysicalDeviceFeatures {

    devProps:VkPhysicalDeviceProperties = .{};
    devFeatures:VkPhysicalDeviceFeatures = .{};
    features13:VkPhysicalDeviceVulkan13Features = .{};
    devFeatures2:VkPhysicalDeviceFeatures2 = .{pNext=*features13};
    qfamProps:[..] VkQueueFamilyProperties;
    gfami:u32 = 0;
    for device: devices {
        vkGetPhysicalDeviceProperties(device, *devProps);
        vkGetPhysicalDeviceFeatures(device, *devFeatures);
        vkGetPhysicalDeviceFeatures2(device,*devFeatures2);

        queue_family_count: u32 = 0;
        vkGetPhysicalDeviceQueueFamilyProperties(device, *queue_family_count, null);
        queue_family_count = min(queue_family_count, 8);
        vkGetPhysicalDeviceQueueFamilyProperties(device, *queue_family_count, qfamProps.data);



        for j:0..qfamProps.count -1 {
            supports_present := VK_FALSE;
            vkGetPhysicalDeviceSurfaceSupportKHR(device, xx j, surface, *supports_present);
            // usually the graphics family is going to be the same as the present family, you wouldnt run cad on a 6502 would you ?
            if qfamProps[j].queueFlags & .GRAPHICS_BIT && supports_present == VK_TRUE {
                gfami = xx j;
                break;
            }
        }   

        if devProps.deviceType == .DISCRETE_GPU && devFeatures.geometryShader && features13.dynamicRendering {
            return device,gfami,devFeatures;
        }
    }
    print("no suitable device");
    exit(1);
    return VK_NULL_HANDLE,gfami,devFeatures;
}

choose_schain_settings :: (formats:[] VkSurfaceFormatKHR,modes:[..] VkPresentModeKHR,sCaps:VkSurfaceCapabilitiesKHR,win:winfo_t) -> VkSurfaceFormatKHR,VkPresentModeKHR,VkExtent2D {
    fmt:VkSurfaceFormatKHR = .{};
    for sformat: formats {
        if sformat.format == .VK_FORMAT_B8G8R8A8_SRGB  && sformat.colorSpace == .VK_COLOR_SPACE_SRGB_NONLINEAR_KHR{
            fmt.format = sformat.format;
            fmt.colorSpace = sformat.colorSpace;
            break;
        }
        // else {
        //     fmt = formats[0];
        //     break;
        // } I only want BRHJRNURHUHJWNMER_SRGB :D
    }
    mde:VkPresentModeKHR;
    for mode: modes {
        if mode == .VK_PRESENT_MODE_MAILBOX_KHR {
            mde = mode;
            break;
        }

    }

    extent:VkExtent2D = .{};

    #if OS == .WINDOWS {
        #import "Windows";

        rect:RECT;

        GetWindowRect(win.whnd,*rect);

        extent.width = xx rect.bottom;
        extent.width = xx rect.left;
    }

    if sCaps.currentExtent.width != U32_MAX then extent = sCaps.currentExtent;
    else {
        Clamp(*extent.width,sCaps.minImageExtent.width,sCaps.maxImageExtent.width);
        Clamp(*extent.height,sCaps.minImageExtent.height,sCaps.maxImageExtent.height);
    }
    return fmt,mde,extent;
}

buffer :: struct {
    vBuffer:VkBuffer;
    mem:*void;
    vkmem:VkDeviceMemory;
    type:VkBufferUsageFlags;
}



// Vertex :: struct {
//     pos:Vector3;
//     uv:Vector2;
//     // We do not need normals for a CAD program
//     color:Vector4;
// }

Mesh :: struct {
    vertCount:int;
    vertexBuf:buffer;
    indexBuf:buffer;
    vertexLoc:VkDeviceAddress;
}

World :: struct {
    transform:matr44;
}

memtype :: enum {
	GPU_ONLY;
	CPU_ONLY;
}

alloc_buffers :: (size:u64,use:VkBufferUsageFlags,r:*fwdpp_r,memory:memtype) ->  buffer {

    buf:buffer;

    bufferCI:VkBufferCreateInfo = .{};
    
    bufferCI.size = size; 
    bufferCI.usage = xx use;
    bufferCI.sharingMode = .EXCLUSIVE; // we want to ensure no shenanigans happen

    vkCreateBuffer(r.pipeline.lDevice,*bufferCI,null,*buf.vBuffer);
    buf.type = use;

    memprops:VkPhysicalDeviceMemoryProperties = .{};

    vkGetPhysicalDeviceMemoryProperties(r.pipeline.pDevice,*memprops);
    index:u32;
    if memory== {
    	case .GPU_ONLY; index = find_gpu_only_mem(memprops);
	case .CPU_ONLY; index = find_cpu_only_mem(memprops);
    }
    allocInfo:VkMemoryAllocateInfo = .{};

    vkMemReq:VkMemoryRequirements = .{};
    vkGetBufferMemoryRequirements(r.pipeline.lDevice,buf.vBuffer,*vkMemReq);

    flags:VkMemoryAllocateFlagsInfo = .{};

    flags.flags = 0x2;

    allocInfo.allocationSize = size + vkMemReq.alignment;
    allocInfo.memoryTypeIndex = index;
    allocInfo.pNext = *flags;
    devMem:VkDeviceMemory;

    if vkAllocateMemory(r.pipeline.lDevice,*allocInfo,null,*devMem) != .VK_SUCCESS then exit ;


    offset:u64 = 0;

    if vkBindBufferMemory(r.pipeline.lDevice,buf.vBuffer,devMem,0) != .VK_SUCCESS then exit;
    buf.vkmem = devMem;
    return buf;
}

// mcpy_bufs :: (src:[] float, dest:*void) {
// 	if dest == null {
// 		dest = alloc(size_of(float) * src.count);
// 	}
	
// 	memcpy(dest,src.data,src.count);
// }
// mcpy_bufs :: (src:[] u32, dest:*void) {
// 	if dest == null {
// 		dest = alloc(size_of(u32) * src.count);
// 	}
	
// 	memcpy(dest,src.data,src.count);
// }

find_gpu_only_mem :: (memProps:VkPhysicalDeviceMemoryProperties) -> u32 {
        for 0..31 {
		if memProps.memoryTypes[it].propertyFlags & .DEVICE_LOCAL_BIT != 0  { return xx it; }
        }
        print("no_local_bits\n");
        return 0;
}


find_cpu_only_mem :: (memProps:VkPhysicalDeviceMemoryProperties) -> u32 {
	for 0..31 {
		if memProps.memoryTypes[it].propertyFlags & .HOST_COHERENT_BIT != 0 && memProps.memoryTypes[it].propertyFlags & .HOST_VISIBLE_BIT != 0 then return xx it;
	}
        print("no_host_bits\n");
	return 0;

}

#load "log.jai";
#import "Vulkan";
#import "Math";
#import "Basic";
#load "util.jai";
#load "drawing.jai";
#import "mffp";
#import "Compiler";

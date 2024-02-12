#scope_module

log_type :: enum u8 {
    Info;
    Warning;
    Error;
}

log :: (type:log_type,message:string) {
    print("RENDERER::% %\n",type,message);
    if type == .Error {
        exit(1);
    }
}
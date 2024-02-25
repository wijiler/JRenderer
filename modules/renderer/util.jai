read_spirv_file :: (path:string) -> *u32,s64 {
        //chars:[] u32;
        file, success :=  file_open(path);
        if !success {
            print("Could not open file %.\n",path);
            exit(1);
        }
        length :=  file_length(file);
        buffer := cast(*u8) alloc(length);
    
        success =  file_read(file, buffer, length);
        if !success {
            print("Could not read from %.\n",path);
            exit(1);
        }

        // chars = split_u8_arr(buffer);
        
        
        return cast(*u32)buffer,length;
}

perspective :: (fov:float,aspect:float,near:float,far:float) -> Matrix4 {
	mat4:Matrix4 = .{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	f, fn:float;
	f = 1.0 / tan(fov * 0.5);
	fn = 1.0 / (near - far);

	mat4._12 = f / aspect;
	mat4._22 = f;
	mat4._33 = far * fn;
	mat4._34 = -1.0;
	mat4._43 = near * far * fn;
	
	return mat4;
}



// split_u8_arr :: (arr:*u8) -> []u32 {
//     a_arr:[] u32 = NewArray(to_string(arr).count / 4,u32,alignment=4);
//     return a_arr;
// }

#import "Basic";

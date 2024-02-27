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



// split_u8_arr :: (arr:*u8) -> []u32 {
//     a_arr:[] u32 = NewArray(to_string(arr).count / 4,u32,alignment=4);
//     return a_arr;
// }

#import "Basic";

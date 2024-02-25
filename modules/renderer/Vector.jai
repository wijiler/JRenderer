
// specifically meant for 3mf's 
// normalize_array_vectors :: (extent:VkExtent2D,array:[] float) -> [] float {
//     arr := array;
//     for 0..arr.count - 1 {
//         if it % 2 == 0
//             arr[it] /= extent.height; 
//         else if it % 3 == 0 
//             continue;
//         else
//             arr[it] /= extent.width;
//     }
//     return arr;
// }

normalize_vec3_arr :: (arr:[] Vector3) -> [] Vector3 {
    vecs:[..] Vector3;
    for vec:arr {
        array_add(*vecs,normalize(vec));
    }
    return vecs;
}

vec_2_buf :: (arr:[] Vector3) -> [] float {
    pos:[..] float;
    for vec:arr {
        array_add(*pos,vec.x);
        array_add(*pos,vec.y);
        array_add(*pos,vec.z);
    }
    return pos;
}

buffer_2_vec :: (buf:[] float) -> [] Vector3 {
    vecs:[..] Vector3;
    for 0..buf.count - 1 {
        vec:Vector3;
        vec.x = buf[it];
        vec.y = buf[it+1];
        vec.z = buf[it+1];
        array_add(*vecs,vec);
        it += 2;
    }
    return vecs;
}

#import "Vulkan";
#import "Math";

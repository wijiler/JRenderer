
// // specifically meant for 3mf's 
// // normalize_array_vectors :: (extent:VkExtent2D,array:[] float) -> [] float {
// //     arr := array;
// //     for 0..arr.count - 1 {
// //         if it % 2 == 0
// //             arr[it] /= extent.height; 
// //         else if it % 3 == 0 
// //             continue;
// //         else
// //             arr[it] /= extent.width;
// //     }
// //     return arr;
// // }

// normalize_vec3_arr :: (arr:[] Vector3) -> [] Vector3 {
//     vecs:[..] Vector3;
//     for vec:arr {
//         array_add(*vecs,normalize(vec));
//     }
//     return vecs;
// }

// vec_2_buf :: (arr:[] Vector3) -> [] float {
//     pos:[..] float;
//     for vec:arr {
//         array_add(*pos,vec.x);
//         array_add(*pos,vec.y);
//         array_add(*pos,vec.z);
//     }
//     return pos;
// }

// buffer_2_vec :: (buf:[] float) -> [] Vector3 {
//     vecs:[..] Vector3;
//     for 0..buf.count - 1 {
//         vec:Vector3;
//         vec.x = buf[it];
//         vec.y = buf[it+1];
//         vec.z = buf[it+1];
//         array_add(*vecs,vec);
//         it += 2;
//     }
//     return vecs;
// }


// matr44 :: Matrix4;

clamp_reset :: (num:$T,high:T,low:T) {
    if num >= high then num = low;
    if num < low then num = 0;
}

// perspective :: (fov:float,aspect:float,near:float,far:float) -> matr44 {
// 	mat4:matr44 = .{coef=.[.[0,0,0,0],.[0,0,0,0],.[0,0,0,0],.[0,0,0,0]]};
// 	f, fn:float;
// 	f = 1.0 / tan(fov * 0.5);
// 	fn = 1.0 / (near - far);

// 	mat4.coef[0][0] = f / aspect;
// 	mat4.coef[1][1] = f;
// 	mat4.coef[2][2] = (near + far) * fn;
// 	mat4.coef[2][3] = 1.0;
// 	mat4.coef[3][2] = 2.0 * near * far * fn;
	
// 	return mat4;
// }


// translate_1 :: (t: Vector3) -> matr44 {
//     m:matr44 = .{coef=.[.[1,0,0,0],.[0,1,0,0],.[0,0,1,0],.[0,0,0,1]]};
//     m.coef[0][3] += m.coef[0][0] * t.x + m.coef[0][1] * t.y + m.coef[0][2] * t.z;
//     m.coef[1][3] += m.coef[1][0] * t.x + m.coef[1][1] * t.y + m.coef[1][2] * t.z;
//     m.coef[2][3] += m.coef[2][0] * t.x + m.coef[2][1] * t.y + m.coef[2][2] * t.z;
//     m.coef[3][3] += m.coef[3][0] * t.x + m.coef[3][1] * t.y + m.coef[3][2] * t.z;
//     return m;
// }


// #import "Vulkan";
// #import "Math";

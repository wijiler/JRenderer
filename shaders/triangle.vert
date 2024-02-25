#version 450
#extension GL_EXT_buffer_reference : require

layout (location = 0) in vec3 position;
layout (location = 1) in vec4 color;

layout (location = 0) out vec4 outColor;

 

//push constants block
layout( push_constant ) uniform constants
{	
	mat4 render_matrix;
} PushConstants;

void main() 
{	

	//output data
	gl_Position = PushConstants.render_matrix *vec4(position,1.0f);
	outColor = color;
}

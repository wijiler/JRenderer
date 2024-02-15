#version 450

layout (location = 0) out vec4 outColor;

void main() 
{
	//const array of positions for the triangle
	const vec3 positions[6] = vec3[6](
		vec3(-0.5f,-0.5f, 0.5f),
		vec3(-0.5f,0.5f, 0.5f),
		vec3(0.5f,0.5f, 0.5f),

		vec3(-0.5f,-0.5f, 0.5f),
		vec3(0.5f,-0.5f, 0.5f),
		vec3(0.5f,0.5f, 0.5f)
	);

	//const array of colors for the triangle
	const vec4 colors[6] = vec4[6](
		vec4(1.0f, 0.0f, 0.0f,1.0f), //red
		vec4(0.0f, 1.0f, 0.0f,1.0f), //green
		vec4(0.0f, 0.0f, 1.0f,1.0f), //blue
		vec4(1.0f, 0.0f, 0.0f,1.0f), //red
		vec4(0.0f, 1.0f, 0.0f,1.0f), //green
		vec4(0.0f, 0.0f, 1.0f,1.0f)  //blue
	);

	//output the position of each vertex
	gl_Position = vec4(positions[gl_VertexIndex], 1.0f);
	outColor = colors[gl_VertexIndex];
}
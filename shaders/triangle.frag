#version 450

layout(location = 0) in vec4 fragColor;
layout(location = 1) out vec4 outColor;

void main() {
    outColor = fragColor;
}
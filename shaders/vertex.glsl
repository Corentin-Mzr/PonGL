#version 330 core

layout (location = 0) in vec2 vertex_pos;
layout (location = 1) in vec2 uv_coords;

out vec2 frag_uv;

uniform vec2 mesh_pos;

mat4 translation(in vec2 pos)
{
    return mat4 (
        1.0f, 0.0f, 0.0f, 0.0f,
        0.0f, 1.0f, 0.0f, 0.0f,
        0.0f, 0.0f, 1.0f, 0.0f,
        pos.x, pos.y, 0.0f, 1.0f
    );
}

void main()
{
    vec4 pos = translation(mesh_pos) * vec4(vertex_pos, 0.0f, 1.0f);

    gl_Position = vec4(pos.x, pos.y, 0.0f, 1.0f);
}
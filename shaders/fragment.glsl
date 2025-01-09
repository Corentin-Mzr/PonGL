#version 330 core

in vec2 frag_uv;

out vec4 screen_color;

// uniform sampler2D material;

void main()
{
    // vec4 tex_color = texture(material, frag_uv);
    screen_color = vec4(1.0, 1.0, 1.0, 1.0);
}
#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>

// Rectangle mesh
class RectMesh
{
public:
    RectMesh(const float w = 1.0f, const float h = 1.0f);
    ~RectMesh();

    // Draw the mesh
    void draw();

private:
    unsigned vao, vbo_pos, vbo_uv;
};
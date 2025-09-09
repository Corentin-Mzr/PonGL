#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>

// Rectangle mesh
class RectMesh
{
public:
    // Constructor
    RectMesh(float w = 1.0f, float h = 1.0f);

    // Destructor
    ~RectMesh();

    // Non copyable
    RectMesh(const RectMesh&) = delete;
    RectMesh& operator=(const RectMesh&) = delete;

    // Movable
    RectMesh(RectMesh&& other) noexcept;
    RectMesh& operator=(RectMesh&& other) noexcept;

    // Draw the mesh
    void draw();

private:
    // Free OpenGL resources 
    void release();

private:
    unsigned vao = 0; 
    unsigned vbo_pos = 0; 
    unsigned vbo_uv = 0;
};
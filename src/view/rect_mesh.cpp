#include "rect_mesh.hpp"
#include <iostream>

RectMesh::RectMesh(const float w, const float h)
{
    float positions[] = {
        -w, -h,
        -w, h,
        w, h,
        -w, -h,
        w, h,
        w, -h};

    float uvs[] = {
        0.0f, 0.0f,
        1.0f, 0.0f,
        1.0f, 1.0f,

        0.0f, 0.0f,
        1.0f, 1.0f,
        0.0f, 1.0f};

    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    // Position
    glGenBuffers(1, &vbo_pos);
    glBindBuffer(GL_ARRAY_BUFFER, vbo_pos);
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), nullptr);
    glEnableVertexAttribArray(0);

    // UV coords
    glGenBuffers(1, &vbo_uv);
    glBindBuffer(GL_ARRAY_BUFFER, vbo_uv);
    glBufferData(GL_ARRAY_BUFFER, sizeof(uvs), uvs, GL_STATIC_DRAW);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), nullptr);
    glEnableVertexAttribArray(1);

    // Unbind VAO
    glBindVertexArray(0);
}

RectMesh::~RectMesh()
{
    release();
}

RectMesh::RectMesh(RectMesh &&other) noexcept : vao(other.vao), vbo_pos(other.vbo_pos), vbo_uv(other.vbo_uv)
{
    other.vao = 0;
    other.vbo_pos = 0;
    other.vbo_uv = 0;
}

RectMesh& RectMesh::operator=(RectMesh &&other) noexcept
{
    if (this != &other)
    {
        release();

        vao = other.vao;
        vbo_pos = other.vbo_pos;
        vbo_uv = other.vbo_uv;

        other.vao = 0;
        other.vbo_pos = 0;
        other.vbo_uv = 0;
    }

    return *this;
}

void RectMesh::draw()
{
    glBindVertexArray(vao);
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glBindVertexArray(0);
}

void RectMesh::release()
{
    if (vbo_pos)
    {
        glDeleteBuffers(1, &vbo_pos);
        vbo_pos = 0;
    }

    if (vbo_uv)
    {
        glDeleteBuffers(1, &vbo_uv);
        vbo_uv = 0;
    }

    if (vao)
    {
        glDeleteVertexArrays(1, &vao);
        vao = 0;
    }
}

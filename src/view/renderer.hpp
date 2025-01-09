#pragma once

#include <memory>
#include <map>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <ft2build.h>
#include FT_FREETYPE_H

#include "rect_mesh.hpp"
#include "scene.hpp"

// Handle the drawing to the screen
class Renderer
{
    struct Character
    {
        unsigned int texture_id; // ID handle of the glyph texture
        glm::ivec2 size;        // Size of glyph
        glm::ivec2 bearing;     // Offset from baseline to left/top of glyph
        unsigned int advance;   // Offset to advance to next glyph
    };

public:
    Renderer() = default;
    Renderer(GLFWwindow *window, Scene *scene, const unsigned shader, const unsigned text_shader);

    // Initialize Freetype
    void init_freetype();

    // Load a font
    void load_font(const char *filepath);

    // Render the given text
    void render_text(const std::string &text, float x, float y, const float scale);

    // Render the scene
    void render();

private:
    GLFWwindow *window = nullptr;
    int width = 0, height = 0;
    Scene *scene = nullptr;
    unsigned shader = 0;
    int meshpos_location = 0;

    std::vector<std::shared_ptr<RectMesh>> meshes;

    unsigned text_shader = 0;
    unsigned text_vao = 0;
    unsigned text_vbo = 0;
    int proj_location = 0;
    int text_location = 0;
    FT_Library ft;
    FT_Face face;
    std::map<char, Character> characters;

    // Returns projection matrix
    glm::mat4 get_proj_matrix() const;

    // Prepare VAO and VBO for text rendering
    void prepare_memory();

    // Load all glyphs from the font
    void load_glyphs();
};
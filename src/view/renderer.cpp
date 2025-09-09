#include "renderer.hpp"
#include <string>

Renderer::Renderer(GLFWwindow *window, Scene *scene, const unsigned shader, const unsigned text_shader) : window(window),
                                                                                                          scene(scene),
                                                                                                          shader(shader),
                                                                                                          text_shader(text_shader)
{
    glfwGetWindowSize(window, &width, &height);

    for (const auto &obj : scene->get_objects())
    {
        const auto &dim = obj.get_dim();
        // meshes.push_back(std::make_shared<RectMesh>(dim.x, dim.y));
        meshes.emplace_back(dim.x, dim.y);
    }

    meshpos_location = glGetUniformLocation(shader, "mesh_pos");
    proj_location = glGetUniformLocation(text_shader, "projection");

    glUseProgram(text_shader);
    glUniformMatrix4fv(proj_location, 1, GL_FALSE, glm::value_ptr(get_proj_matrix()));

    init_freetype();
    prepare_memory();
}

void Renderer::init_freetype()
{
    if (FT_Init_FreeType(&ft))
    {
        std::cerr << "Could not initialize FreeType\n";
    }
}

void Renderer::load_font(const char *filepath)
{
    if (FT_New_Face(ft, filepath, 0, &face))
    {
        std::cerr << "Could not load font: " << filepath << "\n";
    }
    FT_Set_Pixel_Sizes(face, 0, 48);
    load_glyphs();
    FT_Done_Face(face);
    FT_Done_FreeType(ft);
    std::cout << "Font " << filepath << " loaded\n";
}

void Renderer::render_text(const std::string &text, float x, float y, const float scale)
{
    glUseProgram(text_shader);
    glActiveTexture(GL_TEXTURE0);
    glBindVertexArray(text_vao);

    for (auto c = text.begin(); c != text.end(); ++c)
    {
        Character ch = characters[*c];
        float xpos = x + ch.bearing.x * scale;
        float ypos = y - (ch.size.y - ch.bearing.y) * scale;

        float w = ch.size.x * scale;
        float h = ch.size.y * scale;
        // update VBO for each character
        float vertices[6][4] = {
            {xpos, ypos + h, 0.0f, 0.0f},
            {xpos, ypos, 0.0f, 1.0f},
            {xpos + w, ypos, 1.0f, 1.0f},

            {xpos, ypos + h, 0.0f, 0.0f},
            {xpos + w, ypos, 1.0f, 1.0f},
            {xpos + w, ypos + h, 1.0f, 0.0f}};
        // render glyph texture over quad
        glBindTexture(GL_TEXTURE_2D, ch.texture_id);
        // update content of VBO memory
        glBindBuffer(GL_ARRAY_BUFFER, text_vbo);
        glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(vertices), vertices);
        glBindBuffer(GL_ARRAY_BUFFER, 0);
        // render quad
        glDrawArrays(GL_TRIANGLES, 0, 6);
        // now advance cursors for next glyph (note that advance is number of 1/64 pixels)
        x += (ch.advance >> 6) * scale; // bitshift by 6 to get value in pixels (2^6 = 64)
    }
    glBindVertexArray(0);
    glBindTexture(GL_TEXTURE_2D, 0);
}

void Renderer::render()
{
    const auto &obj = scene->get_objects();

    glUseProgram(shader);
    for (size_t i = 0; i < meshes.size(); ++i)
    {
        glUniform2fv(meshpos_location, 1, glm::value_ptr(obj[i].get_pos()));
        // meshes[i]->draw();
        meshes[i].draw();
    }

    render_text("Player: " + std::to_string(scene->get_player_score()), 0.25f * width, 0.9f * height, 0.5f);
    render_text("Bot: " + std::to_string(scene->get_bot_score()), 0.75f * width, 0.9f * height, 0.5f);
}

void Renderer::cleanup()
{
    meshes.clear();
}

glm::mat4 Renderer::get_proj_matrix() const
{
    glm::mat4 projection = glm::ortho(0.0f, static_cast<float>(width), 0.0f, static_cast<float>(height));
    return projection;
}

void Renderer::prepare_memory()
{
    glGenVertexArrays(1, &text_vao);
    glGenBuffers(1, &text_vbo);
    glBindVertexArray(text_vao);
    glBindBuffer(GL_ARRAY_BUFFER, text_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(float) * 6 * 4, NULL, GL_DYNAMIC_DRAW);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(float), 0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
}

void Renderer::load_glyphs()
{
    glUseProgram(text_shader);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1); // disable byte-alignment restriction

    for (unsigned char c = 0; c < 128; c++)
    {
        // load character glyph
        if (FT_Load_Char(face, c, FT_LOAD_RENDER))
        {
            std::cerr << "ERROR::FREETYTPE: Failed to load Glyph" << std::endl;
            continue;
        }
        // generate texture
        unsigned int texture;
        glGenTextures(1, &texture);
        glBindTexture(GL_TEXTURE_2D, texture);
        glTexImage2D(
            GL_TEXTURE_2D,
            0,
            GL_RED,
            face->glyph->bitmap.width,
            face->glyph->bitmap.rows,
            0,
            GL_RED,
            GL_UNSIGNED_BYTE,
            face->glyph->bitmap.buffer);
        // set texture options
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        // now store character for later use
        Character character = {
            texture,
            glm::ivec2(face->glyph->bitmap.width, face->glyph->bitmap.rows),
            glm::ivec2(face->glyph->bitmap_left, face->glyph->bitmap_top),
            static_cast<unsigned>(face->glyph->advance.x)};
        characters.insert(std::pair<char, Character>(c, character));
    }
    glBindTexture(GL_TEXTURE_2D, 0);
}

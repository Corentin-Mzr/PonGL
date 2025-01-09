#include "shader.hpp"


[[nodiscard]] unsigned int make_shader_module(const std::string &filepath, unsigned int module_type)
{
    // Get file content
    std::ifstream file;
    std::stringstream buffer;
    std::string line;
    buffer.exceptions(std::ifstream::failbit | std::ifstream::badbit);
    try 
    {
        file.open(filepath);
        buffer << file.rdbuf();
        file.close();
    }
    catch (std::ifstream::failure &e) {
        std::cerr << "[SHADER MODULE CREATION ERROR]\n" << e.what() << std::endl;
    }

    // Convert to char*
    std::string shader_source = buffer.str();
    const char* shader_src = shader_source.c_str();

    // Create and compile the shader module
    unsigned int shader_module = glCreateShader(module_type);
    glShaderSource(shader_module, 1, &shader_src, NULL);
    glCompileShader(shader_module);

    // Check compilation is OK
    int success;
    glGetShaderiv(shader_module, GL_COMPILE_STATUS, &success);
    if (!success)
    {
        char error_log[1024];
        glGetShaderInfoLog(shader_module, 1024, NULL, error_log);
        std::cerr << "[SHADER MODULE COMPILATION ERROR]\n" << error_log << std::endl;
    }

    return shader_module;
}

[[nodiscard]] unsigned int make_shader_program(const std::string &vertex_filepath, const std::string &fragment_filepath)
{
    // Create modules
    unsigned int vertex_shader = make_shader_module(vertex_filepath, GL_VERTEX_SHADER);
    unsigned int fragment_shader = make_shader_module(fragment_filepath, GL_FRAGMENT_SHADER);

    // Create shader program and link modules
    unsigned int shader_program = glCreateProgram();
    glAttachShader(shader_program, vertex_shader);
    glAttachShader(shader_program, fragment_shader);
    glLinkProgram(shader_program);

    // Check compilation is OK
    int success;
    glGetProgramiv(shader_program, GL_LINK_STATUS, &success);
    if (!success)
    {
        char error_log[1024];
        glGetShaderInfoLog(shader_program, 1024, NULL, error_log);
        std::cerr << "[SHADER PROGRAM LINKING ERROR]\n" << error_log << std::endl;
    }

    // Delete modules
    glDeleteShader(vertex_shader);
    glDeleteShader(fragment_shader);

    return shader_program;

}
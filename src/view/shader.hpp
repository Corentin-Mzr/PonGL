#pragma once

#include <string>

// Create a shader module from file
[[nodiscard]] 
unsigned int make_shader_module(const std::string &filepath, unsigned int module_type);

// Create a shader program from a vertex and fragment shader files
[[nodiscard]] 
unsigned int make_shader_program(const std::string &vertex_filepath, const std::string &fragment_filepath);

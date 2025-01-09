#pragma once

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

[[nodiscard]] unsigned int make_shader_module(const std::string &filepath, unsigned int module_type);
[[nodiscard]] unsigned int make_shader_program(const std::string &vertex_filepath, const std::string &fragment_filepath);

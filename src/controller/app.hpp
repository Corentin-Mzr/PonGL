#pragma once

#include <stdexcept>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "shader.hpp"
#include "rect_mesh.hpp"
#include "scene.hpp"
#include "renderer.hpp"

// App class that will handle the game
// As singleton
class App
{
public:
    App();
    ~App();

    // Run the app
    void run();

private:
    GLFWwindow *window = nullptr;
    const char *title = "Pong with OpenGL";
    unsigned width = 1280;
    unsigned height = 720;
    unsigned shader = 0;
    unsigned text_shader = 0;
    Scene scene;
    Renderer renderer;
    float dt = 0.01f;
    unsigned player_id;
    bool keys[1024] = {false};

    // Initialize GLFW
    void setup_glfw();

    // Create the window
    void setup_window();

    // Load GLAD
    void setup_glad();

    // Define some OpenGL parameters (viewport, background color, ...)
    void setup_opengl();

    // Define callback functions
    void setup_callbacks();

    // Define everything in the scene
    void setup_scene();

    // Process input each frame
    void process_input();

    // Resize window
    static void framebuffer_size_callback(GLFWwindow *window, int width, int height);

    // Handle key inputs
    static void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods);
};
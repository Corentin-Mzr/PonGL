#include "app.hpp"

App::App()
{
    setup_glfw();
    setup_window();
    setup_glad();
    setup_opengl();
    setup_callbacks();
}

App::~App()
{
    glDeleteProgram(shader);
    glfwTerminate();
}

// Run the app
void App::run()
{
    setup_scene();
    double accumulator = 0.0;
    double previous_time = glfwGetTime();
    double current_time = 0;
    double frame_time = 0;

    // Main loop
    while (!glfwWindowShouldClose(window))
    {
        current_time = glfwGetTime();
        frame_time = current_time - previous_time;
        previous_time = current_time;

        // Clamp
        if (frame_time > 0.25)
            frame_time = 0.25;

        accumulator += frame_time;

        glfwPollEvents();
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        process_input();

        while (accumulator >= dt)
        {
            scene.update(dt);
            accumulator -= dt;
        }

        renderer.render();
        glfwSwapBuffers(window);
    }
}

// Initialize GLFW
void App::setup_glfw()
{
    // Initialize GLFW
    if (!glfwInit())
    {
        throw std::runtime_error("Could not initialize GLFW");
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
}

// Create the window
void App::setup_window()
{
    // Create a window
    window = glfwCreateWindow(width, height, title, NULL, NULL);
    if (window == nullptr)
    {
        glfwTerminate();
        throw std::runtime_error("Failed to create GLFW window");
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);
    glfwSetWindowUserPointer(window, this);
}

// Load GLAD
void App::setup_glad()
{
    // Load GLAD
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        glfwTerminate();
        throw std::runtime_error("Failed to initialize GLAD");
    }
}

// Define some OpenGL parameters (viewport, background color, ...)
void App::setup_opengl()
{
    // Set viewport
    glViewport(0, 0, width, height);

    // Define background color
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);

    // Blending
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}

// Define callback functions
void App::setup_callbacks()
{
    // Define viewport callback
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // Define input callback
    glfwSetKeyCallback(window, key_callback);
}

// Define everything in the scene
void App::setup_scene()
{
    shader = make_shader_program("../shaders/vertex.glsl", "../shaders/fragment.glsl");
    text_shader = make_shader_program("../shaders/vertex_text.glsl", "../shaders/fragment_text.glsl");

    // Player
    player_id = scene.add_object(Rect{{-0.8f, 0.0f}, {0.0f, 0.0f}, {0.01f, 0.15f}});

    // Bot
    scene.add_object(Rect{{0.8f, 0.0f}, {0.0f, 0.0f}, {0.01f, 0.15f}});

    // Ball
    scene.add_object(Rect{{0.0f, 0.0f}, scene.get_difficulty() * glm::vec2{1.0f, 0.0f}, {0.01f, 0.01f}});

    // Setup renderer as well
    renderer = Renderer(window, &scene, shader, text_shader);
    renderer.init_freetype();
    renderer.load_font("../fonts/arial.ttf");
}

// Process input each frame
void App::process_input()
{
    if (keys[GLFW_KEY_UP])
        scene.set_obj_vel(player_id, {0.0f, 1.0f});
    else if (keys[GLFW_KEY_DOWN])
        scene.set_obj_vel(player_id, {0.0f, -1.0f});
    else
        scene.set_obj_vel(player_id, {0.0f, 0.0f});
}

// Resize window
void App::framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    glViewport(0, 0, width, height);
}

// Handle key inputs
void App::key_callback(GLFWwindow *window, int key, int scancode, int action, int mods)
{
    auto app = static_cast<App *>(glfwGetWindowUserPointer(window));

    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
    if (key >= 0 && key < 1024)
    {
        if (action == GLFW_PRESS)
            app->keys[key] = true;
        else if (action == GLFW_RELEASE)
            app->keys[key] = false;
    }
}
cmake_minimum_required(VERSION 3.28)
project(PonGL VERSION 1.0.0 LANGUAGES CXX C)

# C++ 17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find OpenGL
find_package(OpenGL REQUIRED)

# Config
set(BUILD_SHARED_LIBS OFF)
set(DEPS_DIR "${CMAKE_SOURCE_DIR}/deps")

# GLFW Config
set(GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" FORCE)
set(GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "GLFW lib only" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "GLFW lib only" FORCE)

# Assimp config
set(ASSIMP_INSTALL OFF)
set(ASSIMP_WARNINGS_AS_ERRORS OFF)
set(ASSIMP_BUILD_TESTS OFF)
set(ASSIMP_BUILD_ALL_EXPORTERS_BY_DEFAULT OFF)
set(ASSIMP_BUILD_ALL_IMPORTERS_BY_DEFAULT OFF)
set(ASSIMP_BUILD_ASSIMP_TOOLS OFF)
set(ASSIMP_BUILD_FBX_IMPORTER ON)
set(ASSIMP_BUILD_OBJ_IMPORTER ON)

# GLAD Config
set(GLAD_INSTALL OFF)
set(GLAD_BUILD_TESTS OFF)
set(GLAD_BUILD_EXAMPLES OFF)

# Freetype Config
set(FT_INSTALL OFF)
set(FT_BUILD_TESTS OFF)
set(FT_BUILD_EXAMPLES OFF)

# Add subdirectories
add_subdirectory(${DEPS_DIR}/assimp)
add_subdirectory(${DEPS_DIR}/glfw)
add_subdirectory(${DEPS_DIR}/glm)
add_subdirectory(${DEPS_DIR}/freetype)

# Glob for source files
file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS 
${CMAKE_SOURCE_DIR}/src/*.cpp
${CMAKE_SOURCE_DIR}/src/*.c
)

# Glob for header files
file(GLOB_RECURSE HEADERS CONFIGURE_DEPENDS
${CMAKE_SOURCE_DIR}/src/*.hpp
${CMAKE_SOURCE_DIR}/src/*.h
)

# Create exe
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

# Include directories
target_include_directories(${PROJECT_NAME} 
PRIVATE
    ${DEPS_DIR}/assimp/include
    ${DEPS_DIR}/glfw/include
    ${DEPS_DIR}/glm
    ${DEPS_DIR}/stb_image
    ${DEPS_DIR}/freetype/include
    ${DEPS_DIR}
    src/controller
    src/model
    src/view
    
)

# Link libs
target_link_libraries(${PROJECT_NAME} 
PRIVATE 
    assimp
    glfw
    glm
    OpenGL::GL
    freetype
)

# Copy fonts and shaders
add_custom_target(copy_folders ALL
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_SOURCE_DIR}/fonts ${CMAKE_BINARY_DIR}/fonts
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_SOURCE_DIR}/shaders ${CMAKE_BINARY_DIR}/shaders
)

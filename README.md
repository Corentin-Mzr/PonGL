# PonGL: "Simple" Pong implementation with OpenGL and C++

![**Example**](example.gif)

## Description

This project is an implementation of the Pong game in C++/C using OpenGL.  

- This project uses a MVC (Model - View - Controller) architecture
- Git submodules are used  

## Installation

### Prerequisites

- C/C++ Compiler
- CMake >=3.28
- OpenGL

### Clone the projet

```sh
git clone --recursive https://github.com/Corentin-Mzr/PonGL
```

### Build the project

From the root folder, execute the following commands:

```sh
cmake -B build
cmake --build build --parallel
```

### Run the program

To run the program, launch it from the build folder:

```sh
cd build
./PonGL
```

## Libraries

The following libraries have been installed for this program:

- [**GLFW**](https://github.com/glfw/glfw)
- [**GLM**](https://github.com/g-truc/glm)
- [**GLAD**](https://github.com/Dav1dde/glad)
- [**FreeType**](https://github.com/freetype/freetype)
- [**Assimp**](https://github.com/assimp/assimp) (**not used**)
- [**Stb_image**](https://github.com/nothings/stb) (**not used**)

## License

This program is under the [**MIT License**](LICENSE.md)

# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Cmake\cmake-3.31.3-windows-x86_64\bin\cmake.exe

# The command to remove a file.
RM = C:\Cmake\cmake-3.31.3-windows-x86_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGL_Via_Submodules.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGL_Via_Submodules.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGL_Via_Submodules.dir/flags.make

CMakeFiles/OpenGL_Via_Submodules.dir/codegen:
.PHONY : CMakeFiles/OpenGL_Via_Submodules.dir/codegen

CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_CXX.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/controller/app.cpp
CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\controller\app.cpp.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\controller\app.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\controller\app.cpp

CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\controller\app.cpp > CMakeFiles\OpenGL_Via_Submodules.dir\src\controller\app.cpp.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\controller\app.cpp -o CMakeFiles\OpenGL_Via_Submodules.dir\src\controller\app.cpp.s

CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_C.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/glad.c
CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\glad.c.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\glad.c.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\glad.c

CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.i"
	C:\MinGW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\glad.c > CMakeFiles\OpenGL_Via_Submodules.dir\src\glad.c.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.s"
	C:\MinGW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\glad.c -o CMakeFiles\OpenGL_Via_Submodules.dir\src\glad.c.s

CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_CXX.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/main.cpp
CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\main.cpp.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\main.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\main.cpp

CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\main.cpp > CMakeFiles\OpenGL_Via_Submodules.dir\src\main.cpp.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\main.cpp -o CMakeFiles\OpenGL_Via_Submodules.dir\src\main.cpp.s

CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_CXX.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/model/rect.cpp
CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\model\rect.cpp.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\model\rect.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\model\rect.cpp

CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\model\rect.cpp > CMakeFiles\OpenGL_Via_Submodules.dir\src\model\rect.cpp.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\model\rect.cpp -o CMakeFiles\OpenGL_Via_Submodules.dir\src\model\rect.cpp.s

CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_CXX.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/model/scene.cpp
CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\model\scene.cpp.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\model\scene.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\model\scene.cpp

CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\model\scene.cpp > CMakeFiles\OpenGL_Via_Submodules.dir\src\model\scene.cpp.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\model\scene.cpp -o CMakeFiles\OpenGL_Via_Submodules.dir\src\model\scene.cpp.s

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_CXX.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/view/rect_mesh.cpp
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\view\rect_mesh.cpp.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\view\rect_mesh.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\rect_mesh.cpp

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\rect_mesh.cpp > CMakeFiles\OpenGL_Via_Submodules.dir\src\view\rect_mesh.cpp.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\rect_mesh.cpp -o CMakeFiles\OpenGL_Via_Submodules.dir\src\view\rect_mesh.cpp.s

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_CXX.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/view/renderer.cpp
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\view\renderer.cpp.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\view\renderer.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\renderer.cpp

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\renderer.cpp > CMakeFiles\OpenGL_Via_Submodules.dir\src\view\renderer.cpp.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\renderer.cpp -o CMakeFiles\OpenGL_Via_Submodules.dir\src\view\renderer.cpp.s

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/flags.make
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/includes_CXX.rsp
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/src/view/shader.cpp
CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj: CMakeFiles/OpenGL_Via_Submodules.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj"
	C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj -MF CMakeFiles\OpenGL_Via_Submodules.dir\src\view\shader.cpp.obj.d -o CMakeFiles\OpenGL_Via_Submodules.dir\src\view\shader.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\shader.cpp

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\shader.cpp > CMakeFiles\OpenGL_Via_Submodules.dir\src\view\shader.cpp.i

CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\src\view\shader.cpp -o CMakeFiles\OpenGL_Via_Submodules.dir\src\view\shader.cpp.s

# Object files for target OpenGL_Via_Submodules
OpenGL_Via_Submodules_OBJECTS = \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj" \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj" \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj" \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj" \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj" \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj" \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj" \
"CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj"

# External object files for target OpenGL_Via_Submodules
OpenGL_Via_Submodules_EXTERNAL_OBJECTS =

OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/controller/app.cpp.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/glad.c.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/main.cpp.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/model/rect.cpp.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/model/scene.cpp.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/view/rect_mesh.cpp.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/view/renderer.cpp.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/src/view/shader.cpp.obj
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/build.make
OpenGL_Via_Submodules.exe: deps/assimp/lib/libassimp.a
OpenGL_Via_Submodules.exe: deps/glfw/src/libglfw3.a
OpenGL_Via_Submodules.exe: deps/glm/glm/libglm.a
OpenGL_Via_Submodules.exe: deps/freetype/libfreetype.a
OpenGL_Via_Submodules.exe: deps/assimp/contrib/zlib/libzlibstatic.a
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/linkLibs.rsp
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/objects1.rsp
OpenGL_Via_Submodules.exe: CMakeFiles/OpenGL_Via_Submodules.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable OpenGL_Via_Submodules.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\OpenGL_Via_Submodules.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGL_Via_Submodules.dir/build: OpenGL_Via_Submodules.exe
.PHONY : CMakeFiles/OpenGL_Via_Submodules.dir/build

CMakeFiles/OpenGL_Via_Submodules.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\OpenGL_Via_Submodules.dir\cmake_clean.cmake
.PHONY : CMakeFiles/OpenGL_Via_Submodules.dir/clean

CMakeFiles/OpenGL_Via_Submodules.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles\OpenGL_Via_Submodules.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/OpenGL_Via_Submodules.dir/depend


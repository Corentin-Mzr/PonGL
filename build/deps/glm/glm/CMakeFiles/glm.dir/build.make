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
include deps/glm/glm/CMakeFiles/glm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/glm/glm/CMakeFiles/glm.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/glm/glm/CMakeFiles/glm.dir/progress.make

# Include the compile flags for this target's objects.
include deps/glm/glm/CMakeFiles/glm.dir/flags.make

deps/glm/glm/CMakeFiles/glm.dir/codegen:
.PHONY : deps/glm/glm/CMakeFiles/glm.dir/codegen

deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: deps/glm/glm/CMakeFiles/glm.dir/flags.make
deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: deps/glm/glm/CMakeFiles/glm.dir/includes_CXX.rsp
deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/deps/glm/glm/detail/glm.cpp
deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: deps/glm/glm/CMakeFiles/glm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj"
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm && C:/MinGW/mingw64/bin/ccache.exe C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj -MF CMakeFiles\glm.dir\detail\glm.cpp.obj.d -o CMakeFiles\glm.dir\detail\glm.cpp.obj -c C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\deps\glm\glm\detail\glm.cpp

deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/glm.dir/detail/glm.cpp.i"
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm && C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\deps\glm\glm\detail\glm.cpp > CMakeFiles\glm.dir\detail\glm.cpp.i

deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/glm.dir/detail/glm.cpp.s"
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm && C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\deps\glm\glm\detail\glm.cpp -o CMakeFiles\glm.dir\detail\glm.cpp.s

# Object files for target glm
glm_OBJECTS = \
"CMakeFiles/glm.dir/detail/glm.cpp.obj"

# External object files for target glm
glm_EXTERNAL_OBJECTS =

deps/glm/glm/libglm.a: deps/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj
deps/glm/glm/libglm.a: deps/glm/glm/CMakeFiles/glm.dir/build.make
deps/glm/glm/libglm.a: deps/glm/glm/CMakeFiles/glm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libglm.a"
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm && $(CMAKE_COMMAND) -P CMakeFiles\glm.dir\cmake_clean_target.cmake
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\glm.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/glm/glm/CMakeFiles/glm.dir/build: deps/glm/glm/libglm.a
.PHONY : deps/glm/glm/CMakeFiles/glm.dir/build

deps/glm/glm/CMakeFiles/glm.dir/clean:
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm && $(CMAKE_COMMAND) -P CMakeFiles\glm.dir\cmake_clean.cmake
.PHONY : deps/glm/glm/CMakeFiles/glm.dir/clean

deps/glm/glm/CMakeFiles/glm.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\deps\glm\glm C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glm\glm\CMakeFiles\glm.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : deps/glm/glm/CMakeFiles/glm.dir/depend


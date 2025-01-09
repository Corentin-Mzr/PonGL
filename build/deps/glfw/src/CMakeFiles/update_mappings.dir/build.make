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

# Utility rule file for update_mappings.

# Include any custom commands dependencies for this target.
include deps/glfw/src/CMakeFiles/update_mappings.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/glfw/src/CMakeFiles/update_mappings.dir/progress.make

deps/glfw/src/CMakeFiles/update_mappings:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating gamepad mappings from upstream repository"
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\deps\glfw\src && C:\Cmake\cmake-3.31.3-windows-x86_64\bin\cmake.exe -P C:/Users/deads/Bureau/Jeux/github/cpp/opengl-via-submodules/deps/glfw/CMake/GenerateMappings.cmake mappings.h.in mappings.h

deps/glfw/src/CMakeFiles/update_mappings.dir/codegen:
.PHONY : deps/glfw/src/CMakeFiles/update_mappings.dir/codegen

update_mappings: deps/glfw/src/CMakeFiles/update_mappings
update_mappings: deps/glfw/src/CMakeFiles/update_mappings.dir/build.make
.PHONY : update_mappings

# Rule to build all files generated by this target.
deps/glfw/src/CMakeFiles/update_mappings.dir/build: update_mappings
.PHONY : deps/glfw/src/CMakeFiles/update_mappings.dir/build

deps/glfw/src/CMakeFiles/update_mappings.dir/clean:
	cd /d C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glfw\src && $(CMAKE_COMMAND) -P CMakeFiles\update_mappings.dir\cmake_clean.cmake
.PHONY : deps/glfw/src/CMakeFiles/update_mappings.dir/clean

deps/glfw/src/CMakeFiles/update_mappings.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\deps\glfw\src C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glfw\src C:\Users\deads\Bureau\Jeux\github\cpp\opengl-via-submodules\build\deps\glfw\src\CMakeFiles\update_mappings.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : deps/glfw/src/CMakeFiles/update_mappings.dir/depend


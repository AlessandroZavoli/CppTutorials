# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alex-wsl/Esperimenti/prova_eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alex-wsl/Esperimenti/prova_eigen/build

# Include any dependencies generated for this target.
include CMakeFiles/name_PROJECT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/name_PROJECT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/name_PROJECT.dir/flags.make

CMakeFiles/name_PROJECT.dir/src/main.cpp.o: CMakeFiles/name_PROJECT.dir/flags.make
CMakeFiles/name_PROJECT.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alex-wsl/Esperimenti/prova_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/name_PROJECT.dir/src/main.cpp.o"
	/bin/x86_64-linux-gnu-g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/name_PROJECT.dir/src/main.cpp.o -c /home/alex-wsl/Esperimenti/prova_eigen/src/main.cpp

CMakeFiles/name_PROJECT.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/name_PROJECT.dir/src/main.cpp.i"
	/bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alex-wsl/Esperimenti/prova_eigen/src/main.cpp > CMakeFiles/name_PROJECT.dir/src/main.cpp.i

CMakeFiles/name_PROJECT.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/name_PROJECT.dir/src/main.cpp.s"
	/bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alex-wsl/Esperimenti/prova_eigen/src/main.cpp -o CMakeFiles/name_PROJECT.dir/src/main.cpp.s

# Object files for target name_PROJECT
name_PROJECT_OBJECTS = \
"CMakeFiles/name_PROJECT.dir/src/main.cpp.o"

# External object files for target name_PROJECT
name_PROJECT_EXTERNAL_OBJECTS =

name_PROJECT: CMakeFiles/name_PROJECT.dir/src/main.cpp.o
name_PROJECT: CMakeFiles/name_PROJECT.dir/build.make
name_PROJECT: CMakeFiles/name_PROJECT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alex-wsl/Esperimenti/prova_eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable name_PROJECT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/name_PROJECT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/name_PROJECT.dir/build: name_PROJECT

.PHONY : CMakeFiles/name_PROJECT.dir/build

CMakeFiles/name_PROJECT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/name_PROJECT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/name_PROJECT.dir/clean

CMakeFiles/name_PROJECT.dir/depend:
	cd /home/alex-wsl/Esperimenti/prova_eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alex-wsl/Esperimenti/prova_eigen /home/alex-wsl/Esperimenti/prova_eigen /home/alex-wsl/Esperimenti/prova_eigen/build /home/alex-wsl/Esperimenti/prova_eigen/build /home/alex-wsl/Esperimenti/prova_eigen/build/CMakeFiles/name_PROJECT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/name_PROJECT.dir/depend

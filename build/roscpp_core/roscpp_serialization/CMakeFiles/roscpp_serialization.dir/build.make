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
CMAKE_SOURCE_DIR = /home/pi/ros_catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/ros_catkin_ws/build

# Include any dependencies generated for this target.
include roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/depend.make

# Include the progress variables for this target.
include roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/progress.make

# Include the compile flags for this target's objects.
include roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/flags.make

roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.o: roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/flags.make
roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.o: /home/pi/ros_catkin_ws/src/roscpp_core/roscpp_serialization/src/serialization.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/ros_catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.o"
	cd /home/pi/ros_catkin_ws/build/roscpp_core/roscpp_serialization && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.o -c /home/pi/ros_catkin_ws/src/roscpp_core/roscpp_serialization/src/serialization.cpp

roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.i"
	cd /home/pi/ros_catkin_ws/build/roscpp_core/roscpp_serialization && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/ros_catkin_ws/src/roscpp_core/roscpp_serialization/src/serialization.cpp > CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.i

roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.s"
	cd /home/pi/ros_catkin_ws/build/roscpp_core/roscpp_serialization && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/ros_catkin_ws/src/roscpp_core/roscpp_serialization/src/serialization.cpp -o CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.s

# Object files for target roscpp_serialization
roscpp_serialization_OBJECTS = \
"CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.o"

# External object files for target roscpp_serialization
roscpp_serialization_EXTERNAL_OBJECTS =

/home/pi/ros_catkin_ws/devel/lib/libroscpp_serialization.so: roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/src/serialization.cpp.o
/home/pi/ros_catkin_ws/devel/lib/libroscpp_serialization.so: roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/build.make
/home/pi/ros_catkin_ws/devel/lib/libroscpp_serialization.so: roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/ros_catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/pi/ros_catkin_ws/devel/lib/libroscpp_serialization.so"
	cd /home/pi/ros_catkin_ws/build/roscpp_core/roscpp_serialization && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/roscpp_serialization.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/build: /home/pi/ros_catkin_ws/devel/lib/libroscpp_serialization.so

.PHONY : roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/build

roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/clean:
	cd /home/pi/ros_catkin_ws/build/roscpp_core/roscpp_serialization && $(CMAKE_COMMAND) -P CMakeFiles/roscpp_serialization.dir/cmake_clean.cmake
.PHONY : roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/clean

roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/depend:
	cd /home/pi/ros_catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/ros_catkin_ws/src /home/pi/ros_catkin_ws/src/roscpp_core/roscpp_serialization /home/pi/ros_catkin_ws/build /home/pi/ros_catkin_ws/build/roscpp_core/roscpp_serialization /home/pi/ros_catkin_ws/build/roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : roscpp_core/roscpp_serialization/CMakeFiles/roscpp_serialization.dir/depend


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
include ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/depend.make

# Include the progress variables for this target.
include ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/progress.make

# Include the compile flags for this target's objects.
include ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/flags.make

ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/TestValues.cpp.o: ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/flags.make
ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/TestValues.cpp.o: /home/pi/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/ros_catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/TestValues.cpp.o"
	cd /home/pi/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestValues.dir/TestValues.cpp.o -c /home/pi/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp

ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/TestValues.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestValues.dir/TestValues.cpp.i"
	cd /home/pi/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp > CMakeFiles/TestValues.dir/TestValues.cpp.i

ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/TestValues.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestValues.dir/TestValues.cpp.s"
	cd /home/pi/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/ros_catkin_ws/src/ros_comm/xmlrpcpp/test/TestValues.cpp -o CMakeFiles/TestValues.dir/TestValues.cpp.s

# Object files for target TestValues
TestValues_OBJECTS = \
"CMakeFiles/TestValues.dir/TestValues.cpp.o"

# External object files for target TestValues
TestValues_EXTERNAL_OBJECTS =

/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/TestValues.cpp.o
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/build.make
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: gtest/lib/libgtest.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /home/pi/ros_catkin_ws/devel/lib/libxmlrpcpp.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /home/pi/ros_catkin_ws/devel/lib/librostime.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/librt.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /home/pi/ros_catkin_ws/devel/lib/libcpp_common.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues: ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/ros_catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues"
	cd /home/pi/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestValues.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/build: /home/pi/ros_catkin_ws/devel/lib/xmlrpcpp/TestValues

.PHONY : ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/build

ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/clean:
	cd /home/pi/ros_catkin_ws/build/ros_comm/xmlrpcpp/test && $(CMAKE_COMMAND) -P CMakeFiles/TestValues.dir/cmake_clean.cmake
.PHONY : ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/clean

ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/depend:
	cd /home/pi/ros_catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/ros_catkin_ws/src /home/pi/ros_catkin_ws/src/ros_comm/xmlrpcpp/test /home/pi/ros_catkin_ws/build /home/pi/ros_catkin_ws/build/ros_comm/xmlrpcpp/test /home/pi/ros_catkin_ws/build/ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_comm/xmlrpcpp/test/CMakeFiles/TestValues.dir/depend


execute_process(COMMAND "/home/pi/ros_catkin_ws/build/common_msgs/sensor_msgs/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/pi/ros_catkin_ws/build/common_msgs/sensor_msgs/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
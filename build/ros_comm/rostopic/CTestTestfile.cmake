# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/ros_comm/rostopic
# Build directory: /home/pi/ros_catkin_ws/build/ros_comm/rostopic
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rostopic_rostest_test_rostopic.test "/home/pi/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build/test_results/rostopic/rostest-test_rostopic.xml" "--return-code" "/usr/bin/python3 /home/pi/ros_catkin_ws/src/ros_comm/rostest/scripts/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/rostopic --package=rostopic --results-filename test_rostopic.xml --results-base-dir \"/home/pi/ros_catkin_ws/build/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/rostopic/test/rostopic.test ")
set_tests_properties(_ctest_rostopic_rostest_test_rostopic.test PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/ros_catkin_ws/devel/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/pi/ros_catkin_ws/src/ros_comm/rostopic/CMakeLists.txt;13;add_rostest;/home/pi/ros_catkin_ws/src/ros_comm/rostopic/CMakeLists.txt;0;")
add_test(_ctest_rostopic_nosetests_test.test_rostopic_command_line_offline.py "/home/pi/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build/test_results/rostopic/nosetests-test.test_rostopic_command_line_offline.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/pi/ros_catkin_ws/build/test_results/rostopic" "/usr/bin/nosetests3 -P --process-timeout=60 /home/pi/ros_catkin_ws/src/ros_comm/rostopic/test/test_rostopic_command_line_offline.py --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build/test_results/rostopic/nosetests-test.test_rostopic_command_line_offline.py.xml")
set_tests_properties(_ctest_rostopic_nosetests_test.test_rostopic_command_line_offline.py PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/ros_catkin_ws/src/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/pi/ros_catkin_ws/src/ros_comm/rostopic/CMakeLists.txt;15;catkin_add_nosetests;/home/pi/ros_catkin_ws/src/ros_comm/rostopic/CMakeLists.txt;0;")

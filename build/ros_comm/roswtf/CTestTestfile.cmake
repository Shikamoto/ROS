# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/ros_comm/roswtf
# Build directory: /home/pi/ros_catkin_ws/build/ros_comm/roswtf
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_roswtf_rostest_test_roswtf.test "/home/pi/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build/test_results/roswtf/rostest-test_roswtf.xml" "--return-code" "/usr/bin/python3 /home/pi/ros_catkin_ws/src/ros_comm/rostest/scripts/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/roswtf --package=roswtf --results-filename test_roswtf.xml --results-base-dir \"/home/pi/ros_catkin_ws/build/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/roswtf/test/roswtf.test ")
set_tests_properties(_ctest_roswtf_rostest_test_roswtf.test PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/ros_catkin_ws/devel/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/pi/ros_catkin_ws/src/ros_comm/roswtf/CMakeLists.txt;9;add_rostest;/home/pi/ros_catkin_ws/src/ros_comm/roswtf/CMakeLists.txt;0;")
add_test(_ctest_roswtf_nosetests_test "/home/pi/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build/test_results/roswtf/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/pi/ros_catkin_ws/build/test_results/roswtf" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/pi/ros_catkin_ws/src/ros_comm/roswtf/test --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build/test_results/roswtf/nosetests-test.xml")
set_tests_properties(_ctest_roswtf_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/ros_catkin_ws/src/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/pi/ros_catkin_ws/src/ros_comm/roswtf/CMakeLists.txt;10;catkin_add_nosetests;/home/pi/ros_catkin_ws/src/ros_comm/roswtf/CMakeLists.txt;0;")

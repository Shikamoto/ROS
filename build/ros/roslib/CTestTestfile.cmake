# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/ros/roslib
# Build directory: /home/pi/ros_catkin_ws/build/ros/roslib
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_roslib_nosetests_test "/home/pi/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build/test_results/roslib/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/pi/ros_catkin_ws/build/test_results/roslib" "/usr/bin/nosetests3 -P --process-timeout=60 --where=/home/pi/ros_catkin_ws/src/ros/roslib/test --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build/test_results/roslib/nosetests-test.xml")
set_tests_properties(_ctest_roslib_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/ros_catkin_ws/src/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/pi/ros_catkin_ws/src/ros/roslib/CMakeLists.txt;42;catkin_add_nosetests;/home/pi/ros_catkin_ws/src/ros/roslib/CMakeLists.txt;0;")
add_test(_ctest_roslib_gtest_roslib-utest "/home/pi/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build/test_results/roslib/gtest-roslib-utest.xml" "--working-dir" "/home/pi/ros_catkin_ws/src/ros/roslib" "--return-code" "/home/pi/ros_catkin_ws/devel/lib/roslib/roslib-utest --gtest_output=xml:/home/pi/ros_catkin_ws/build/test_results/roslib/gtest-roslib-utest.xml")
set_tests_properties(_ctest_roslib_gtest_roslib-utest PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/ros_catkin_ws/src/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/home/pi/ros_catkin_ws/src/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/pi/ros_catkin_ws/src/ros/roslib/CMakeLists.txt;44;catkin_add_gtest;/home/pi/ros_catkin_ws/src/ros/roslib/CMakeLists.txt;0;")
add_test(_ctest_roslib_gtest_roslib-test_package "/home/pi/ros_catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/pi/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build/test_results/roslib/gtest-roslib-test_package.xml" "--return-code" "/home/pi/ros_catkin_ws/devel/lib/roslib/roslib-test_package --gtest_output=xml:/home/pi/ros_catkin_ws/build/test_results/roslib/gtest-roslib-test_package.xml")
set_tests_properties(_ctest_roslib_gtest_roslib-test_package PROPERTIES  _BACKTRACE_TRIPLES "/home/pi/ros_catkin_ws/src/catkin/cmake/test/tests.cmake;160;add_test;/home/pi/ros_catkin_ws/src/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/home/pi/ros_catkin_ws/src/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/pi/ros_catkin_ws/src/ros/roslib/CMakeLists.txt;49;catkin_add_gtest;/home/pi/ros_catkin_ws/src/ros/roslib/CMakeLists.txt;0;")

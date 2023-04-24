# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "delivery_robot_serial_handler: 2 messages, 0 services")

set(MSG_I_FLAGS "-Idelivery_robot_serial_handler:/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg;-Istd_msgs:/home/pi/ros_catkin_ws/src/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(delivery_robot_serial_handler_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg" NAME_WE)
add_custom_target(_delivery_robot_serial_handler_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "delivery_robot_serial_handler" "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg" ""
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg" NAME_WE)
add_custom_target(_delivery_robot_serial_handler_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "delivery_robot_serial_handler" "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/delivery_robot_serial_handler
)
_generate_msg_cpp(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/delivery_robot_serial_handler
)

### Generating Services

### Generating Module File
_generate_module_cpp(delivery_robot_serial_handler
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/delivery_robot_serial_handler
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(delivery_robot_serial_handler_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(delivery_robot_serial_handler_generate_messages delivery_robot_serial_handler_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_cpp _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_cpp _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(delivery_robot_serial_handler_gencpp)
add_dependencies(delivery_robot_serial_handler_gencpp delivery_robot_serial_handler_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS delivery_robot_serial_handler_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/delivery_robot_serial_handler
)
_generate_msg_eus(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/delivery_robot_serial_handler
)

### Generating Services

### Generating Module File
_generate_module_eus(delivery_robot_serial_handler
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/delivery_robot_serial_handler
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(delivery_robot_serial_handler_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(delivery_robot_serial_handler_generate_messages delivery_robot_serial_handler_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_eus _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_eus _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(delivery_robot_serial_handler_geneus)
add_dependencies(delivery_robot_serial_handler_geneus delivery_robot_serial_handler_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS delivery_robot_serial_handler_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/delivery_robot_serial_handler
)
_generate_msg_lisp(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/delivery_robot_serial_handler
)

### Generating Services

### Generating Module File
_generate_module_lisp(delivery_robot_serial_handler
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/delivery_robot_serial_handler
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(delivery_robot_serial_handler_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(delivery_robot_serial_handler_generate_messages delivery_robot_serial_handler_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_lisp _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_lisp _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(delivery_robot_serial_handler_genlisp)
add_dependencies(delivery_robot_serial_handler_genlisp delivery_robot_serial_handler_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS delivery_robot_serial_handler_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/delivery_robot_serial_handler
)
_generate_msg_nodejs(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/delivery_robot_serial_handler
)

### Generating Services

### Generating Module File
_generate_module_nodejs(delivery_robot_serial_handler
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/delivery_robot_serial_handler
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(delivery_robot_serial_handler_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(delivery_robot_serial_handler_generate_messages delivery_robot_serial_handler_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_nodejs _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_nodejs _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(delivery_robot_serial_handler_gennodejs)
add_dependencies(delivery_robot_serial_handler_gennodejs delivery_robot_serial_handler_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS delivery_robot_serial_handler_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/delivery_robot_serial_handler
)
_generate_msg_py(delivery_robot_serial_handler
  "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/delivery_robot_serial_handler
)

### Generating Services

### Generating Module File
_generate_module_py(delivery_robot_serial_handler
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/delivery_robot_serial_handler
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(delivery_robot_serial_handler_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(delivery_robot_serial_handler_generate_messages delivery_robot_serial_handler_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Vel.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_py _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/delivery_robot_serial_handler/msg/Pos.msg" NAME_WE)
add_dependencies(delivery_robot_serial_handler_generate_messages_py _delivery_robot_serial_handler_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(delivery_robot_serial_handler_genpy)
add_dependencies(delivery_robot_serial_handler_genpy delivery_robot_serial_handler_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS delivery_robot_serial_handler_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/delivery_robot_serial_handler)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/delivery_robot_serial_handler
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(delivery_robot_serial_handler_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/delivery_robot_serial_handler)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/delivery_robot_serial_handler
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(delivery_robot_serial_handler_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/delivery_robot_serial_handler)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/delivery_robot_serial_handler
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(delivery_robot_serial_handler_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/delivery_robot_serial_handler)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/delivery_robot_serial_handler
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(delivery_robot_serial_handler_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/delivery_robot_serial_handler)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/delivery_robot_serial_handler\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/delivery_robot_serial_handler
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(delivery_robot_serial_handler_generate_messages_py std_msgs_generate_messages_py)
endif()

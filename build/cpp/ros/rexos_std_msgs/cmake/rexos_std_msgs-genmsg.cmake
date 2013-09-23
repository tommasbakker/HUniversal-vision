# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rexos_std_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Irexos_std_msgs:/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rexos_std_msgs_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/StdReturn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rexos_std_msgs
)
_generate_msg_cpp(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rexos_std_msgs
)
_generate_msg_cpp(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rexos_std_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rexos_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rexos_std_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rexos_std_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rexos_std_msgs_generate_messages rexos_std_msgs_generate_messages_cpp)

# target for backward compatibility
add_custom_target(rexos_std_msgs_gencpp)
add_dependencies(rexos_std_msgs_gencpp rexos_std_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rexos_std_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/StdReturn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rexos_std_msgs
)
_generate_msg_lisp(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rexos_std_msgs
)
_generate_msg_lisp(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rexos_std_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rexos_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rexos_std_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rexos_std_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rexos_std_msgs_generate_messages rexos_std_msgs_generate_messages_lisp)

# target for backward compatibility
add_custom_target(rexos_std_msgs_genlisp)
add_dependencies(rexos_std_msgs_genlisp rexos_std_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rexos_std_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/StdReturn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rexos_std_msgs
)
_generate_msg_py(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/KeyValuePair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rexos_std_msgs
)
_generate_msg_py(rexos_std_msgs
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rexos_std_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rexos_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rexos_std_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rexos_std_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rexos_std_msgs_generate_messages rexos_std_msgs_generate_messages_py)

# target for backward compatibility
add_custom_target(rexos_std_msgs_genpy)
add_dependencies(rexos_std_msgs_genpy rexos_std_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rexos_std_msgs_generate_messages_py)


debug_message(2 "rexos_std_msgs: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rexos_std_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(rexos_std_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rexos_std_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(rexos_std_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rexos_std_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rexos_std_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(rexos_std_msgs_generate_messages_py std_msgs_generate_messages_py)

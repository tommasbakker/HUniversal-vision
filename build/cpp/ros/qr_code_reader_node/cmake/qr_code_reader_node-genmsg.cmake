# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qr_code_reader_node: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iqr_code_reader_node:/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qr_code_reader_node_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qr_code_reader_node
)
_generate_msg_cpp(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/qrCode.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qr_code_reader_node
)
_generate_msg_cpp(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/Collection.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg;/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/qrCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qr_code_reader_node
)

### Generating Services

### Generating Module File
_generate_module_cpp(qr_code_reader_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qr_code_reader_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qr_code_reader_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qr_code_reader_node_generate_messages qr_code_reader_node_generate_messages_cpp)

# target for backward compatibility
add_custom_target(qr_code_reader_node_gencpp)
add_dependencies(qr_code_reader_node_gencpp qr_code_reader_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qr_code_reader_node_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qr_code_reader_node
)
_generate_msg_lisp(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/qrCode.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qr_code_reader_node
)
_generate_msg_lisp(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/Collection.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg;/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/qrCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qr_code_reader_node
)

### Generating Services

### Generating Module File
_generate_module_lisp(qr_code_reader_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qr_code_reader_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qr_code_reader_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qr_code_reader_node_generate_messages qr_code_reader_node_generate_messages_lisp)

# target for backward compatibility
add_custom_target(qr_code_reader_node_genlisp)
add_dependencies(qr_code_reader_node_genlisp qr_code_reader_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qr_code_reader_node_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qr_code_reader_node
)
_generate_msg_py(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/qrCode.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qr_code_reader_node
)
_generate_msg_py(qr_code_reader_node
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/Collection.msg"
  "${MSG_I_FLAGS}"
  "/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/point64.msg;/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/qrCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qr_code_reader_node
)

### Generating Services

### Generating Module File
_generate_module_py(qr_code_reader_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qr_code_reader_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qr_code_reader_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qr_code_reader_node_generate_messages qr_code_reader_node_generate_messages_py)

# target for backward compatibility
add_custom_target(qr_code_reader_node_genpy)
add_dependencies(qr_code_reader_node_genpy qr_code_reader_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qr_code_reader_node_generate_messages_py)


debug_message(2 "qr_code_reader_node: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qr_code_reader_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(qr_code_reader_node_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qr_code_reader_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(qr_code_reader_node_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qr_code_reader_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qr_code_reader_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(qr_code_reader_node_generate_messages_py std_msgs_generate_messages_py)

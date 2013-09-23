# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "part_locator_node: 0 messages, 0 services")

set(MSG_I_FLAGS "-Ipart_locator_node:/home/t/Desktop/repo/src/cpp/ros/part_locator_node/msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(part_locator_node_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(part_locator_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_locator_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(part_locator_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(part_locator_node_generate_messages part_locator_node_generate_messages_cpp)

# target for backward compatibility
add_custom_target(part_locator_node_gencpp)
add_dependencies(part_locator_node_gencpp part_locator_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_locator_node_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(part_locator_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_locator_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(part_locator_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(part_locator_node_generate_messages part_locator_node_generate_messages_lisp)

# target for backward compatibility
add_custom_target(part_locator_node_genlisp)
add_dependencies(part_locator_node_genlisp part_locator_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_locator_node_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(part_locator_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_locator_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(part_locator_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(part_locator_node_generate_messages part_locator_node_generate_messages_py)

# target for backward compatibility
add_custom_target(part_locator_node_genpy)
add_dependencies(part_locator_node_genpy part_locator_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_locator_node_generate_messages_py)


debug_message(2 "part_locator_node: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_locator_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(part_locator_node_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_locator_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(part_locator_node_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_locator_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_locator_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(part_locator_node_generate_messages_py std_msgs_generate_messages_py)

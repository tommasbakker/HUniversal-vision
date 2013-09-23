# Unfortunately, we need this so the ROS cmake files know where to look for our libraries :(
# For every library we set global variables so our subjeprojects can find the includes and libraries they need.

# TODO: Find a nicer way to take care of this.

# add rexos libraries here 
# template: set(libraryname "${REXOS_SOURCE_DIR}library directory")

set(LIB_DATATYPES_INCLUDE "${REXOS_SOURCE_DIR}/libraries/dataTypes/include")
set(LIB_UTILITIES_INCLUDE "${REXOS_SOURCE_DIR}/libraries/utilities/include")
#set(LIB_VISION_INCLUDE "${REXOS_SOURCE_DIR}/libraries/vision/include")
#set(LIB_CAMERA_INCLUDE "${REXOS_SOURCE_DIR}/libraries/camera/include")


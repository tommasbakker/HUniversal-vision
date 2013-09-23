# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# remove duplicate libraries, generalized from PCLConfig.cmake.in
macro(_remove_duplicate_libraries _unfiltered_libraries _final_filtered_libraries)
  set(_filtered_libraries)
  set(_debug_libraries)
  set(_optimized_libraries)
  set(_other_libraries)
  set(_waiting_for_debug 0)
  set(_waiting_for_optimized 0)
  set(_library_position -1)
  foreach(library ${${_unfiltered_libraries}})
    if("${library}" STREQUAL "debug")
      set(_waiting_for_debug 1)
    elseif("${library}" STREQUAL "optimized")
      set(_waiting_for_optimized 1)
    elseif(_waiting_for_debug)
      list(FIND _debug_libraries "${library}" library_position)
      if(library_position EQUAL -1)
        list(APPEND ${_filtered_libraries} debug ${library})
        list(APPEND _debug_libraries ${library})
      endif()
      set(_waiting_for_debug 0)
    elseif(_waiting_for_optimized)
      list(FIND _optimized_libraries "${library}" library_position)
      if(library_position EQUAL -1)
        list(APPEND ${_filtered_libraries} optimized ${library})
        list(APPEND _optimized_libraries ${library})
      endif()
      set(_waiting_for_optimized 0)
    else("${library}" STREQUAL "debug")
      list(FIND _other_libraries "${library}" library_position)
      if(library_position EQUAL -1)
        list(APPEND ${_filtered_libraries} ${library})
        list(APPEND _other_libraries ${library})
      endif()
    endif("${library}" STREQUAL "debug")
  endforeach(library)
  set(_final_filtered_libraries _filtered_libraries)
endmacro()


if(rexos_datatypes_CONFIG_INCLUDED)
  return()
endif()
set(rexos_datatypes_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(rexos_datatypes_SOURCE_PREFIX /home/t/Desktop/repo/src/cpp/libraries/rexos_datatypes)
  set(rexos_datatypes_DEVEL_PREFIX /home/t/Desktop/repo/devel)
  set(rexos_datatypes_INSTALL_PREFIX "")
  set(rexos_datatypes_PREFIX ${rexos_datatypes_DEVEL_PREFIX})
else()
  set(rexos_datatypes_SOURCE_PREFIX "")
  set(rexos_datatypes_DEVEL_PREFIX "")
  set(rexos_datatypes_INSTALL_PREFIX /home/t/Desktop/repo/install)
  set(rexos_datatypes_PREFIX ${rexos_datatypes_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'rexos_datatypes' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(rexos_datatypes_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/t/Desktop/repo/install/include;/usr/include;/opt/ros/groovy/include/opencv;/opt/ros/groovy/include" STREQUAL "")
  set(rexos_datatypes_INCLUDE_DIRS "")
  set(absolute_include_dirs "/home/t/Desktop/repo/install/include;/usr/include;/opt/ros/groovy/include/opencv;/opt/ros/groovy/include")
  foreach(idir ${absolute_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif(IS_DIRECTORY /home/t/Desktop/repo/install/${idir})
      set(include /home/t/Desktop/repo/install/${idir})
    else()
      message(FATAL_ERROR "Project 'rexos_datatypes' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/t/Desktop/repo/install/${idir}'.  Ask the maintainer 'Leau Caust <lowcostvision@gmail.com>' to fix it.")
    endif()
    _list_append_unique(rexos_datatypes_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "rexos_datatypes;/opt/ros/groovy/lib/libopencv_calib3d.so;/opt/ros/groovy/lib/libopencv_contrib.so;/opt/ros/groovy/lib/libopencv_core.so;/opt/ros/groovy/lib/libopencv_features2d.so;/opt/ros/groovy/lib/libopencv_flann.so;/opt/ros/groovy/lib/libopencv_gpu.so;/opt/ros/groovy/lib/libopencv_highgui.so;/opt/ros/groovy/lib/libopencv_imgproc.so;/opt/ros/groovy/lib/libopencv_legacy.so;/opt/ros/groovy/lib/libopencv_ml.so;/opt/ros/groovy/lib/libopencv_nonfree.so;/opt/ros/groovy/lib/libopencv_objdetect.so;/opt/ros/groovy/lib/libopencv_photo.so;/opt/ros/groovy/lib/libopencv_stitching.so;/opt/ros/groovy/lib/libopencv_superres.so;/opt/ros/groovy/lib/libopencv_video.so;/opt/ros/groovy/lib/libopencv_videostab.so")
foreach(library ${libraries})
  if(TARGET ${library})
    list(APPEND rexos_datatypes_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND rexos_datatypes_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/t/Desktop/repo/install/lib;/home/t/Desktop/repo/devel/lib;/opt/ros/groovy/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(rexos_datatypes_LIBRARY_DIRS ${lib_path})
      list(APPEND rexos_datatypes_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'rexos_datatypes'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND rexos_datatypes_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(rexos_datatypes_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${rexos_datatypes_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 rexos_datatypes_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${rexos_datatypes_dep}_FOUND)
      find_package(${rexos_datatypes_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${rexos_datatypes_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(rexos_datatypes_INCLUDE_DIRS ${${rexos_datatypes_dep}_INCLUDE_DIRS})
  list(APPEND rexos_datatypes_LIBRARIES ${${rexos_datatypes_dep}_LIBRARIES})
  _list_append_unique(rexos_datatypes_LIBRARY_DIRS ${${rexos_datatypes_dep}_LIBRARY_DIRS})
  list(APPEND rexos_datatypes_EXPORTED_TARGETS ${${rexos_datatypes_dep}_EXPORTED_TARGETS})
endforeach()

if(rexos_datatypes_LIBRARIES)
  _remove_duplicate_libraries(rexos_datatypes_LIBRARIES rexos_datatypes_LIBRARIES)
endif()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${rexos_datatypes_DIR}/${extra})
  endif()
  include(${extra})
endforeach()

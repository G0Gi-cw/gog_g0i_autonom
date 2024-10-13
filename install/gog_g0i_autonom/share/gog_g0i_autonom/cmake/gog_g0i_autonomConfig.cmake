# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_gog_g0i_autonom_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED gog_g0i_autonom_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(gog_g0i_autonom_FOUND FALSE)
  elseif(NOT gog_g0i_autonom_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(gog_g0i_autonom_FOUND FALSE)
  endif()
  return()
endif()
set(_gog_g0i_autonom_CONFIG_INCLUDED TRUE)

# output package information
if(NOT gog_g0i_autonom_FIND_QUIETLY)
  message(STATUS "Found gog_g0i_autonom: 0.0.0 (${gog_g0i_autonom_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'gog_g0i_autonom' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${gog_g0i_autonom_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(gog_g0i_autonom_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${gog_g0i_autonom_DIR}/${_extra}")
endforeach()

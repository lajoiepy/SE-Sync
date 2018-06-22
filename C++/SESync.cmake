# Generated by CMake 3.5.2

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget SESync Optimization)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target SESync
add_library(SESync SHARED IMPORTED)

set_target_properties(SESync PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/lajoiepy/Documents/master/mit/SE-Sync/C++/SE-Sync/include;/home/lajoiepy/Documents/master/mit/SE-Sync/C++/eigen;/usr/include/suitesparse;/usr/include/suitesparse"
  INTERFACE_LINK_LIBRARIES "Optimization;/usr/lib/libcblas.so;/usr/lib/libf77blas.so;/usr/lib/libatlas.so;/usr/lib/x86_64-linux-gnu/libcholmod.so;/usr/lib/x86_64-linux-gnu/libamd.so;/usr/lib/x86_64-linux-gnu/libcolamd.so;/usr/lib/x86_64-linux-gnu/libcamd.so;/usr/lib/x86_64-linux-gnu/libccolamd.so;/usr/lib/x86_64-linux-gnu/libspqr.so;/usr/lib/x86_64-linux-gnu/libcudart_static.a;-lpthread;dl;/usr/lib/x86_64-linux-gnu/librt.so;/usr/lib/x86_64-linux-gnu/libcublas.so;gomp"
)

# Create imported target Optimization
add_library(Optimization INTERFACE IMPORTED)

set_target_properties(Optimization PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include"
  INTERFACE_SOURCES "/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include/Optimization/Base/Concepts.h;/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include/Optimization/Util/Stopwatch.h;/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include/Optimization/Smooth/Concepts.h;/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include/Optimization/Smooth/GradientDescent.h;/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include/Optimization/Smooth/TNT.h;/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include/Optimization/Convex/Concepts.h;/home/lajoiepy/Documents/master/mit/SE-Sync/C++/Optimization/include/Optimization/Convex/ProximalGradient.h"
)

# Import target "SESync" for configuration "RelWithDebInfo"
set_property(TARGET SESync APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SESync PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "/home/lajoiepy/Documents/master/mit/SE-Sync/C++/lib/libSESync.so"
  IMPORTED_SONAME_RELWITHDEBINFO "libSESync.so"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)

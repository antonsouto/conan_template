########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(hello_library_FIND_QUIETLY)
    set(hello_library_MESSAGE_MODE VERBOSE)
else()
    set(hello_library_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/hello_libraryTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${hello_library_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(hello_library_VERSION_STRING "0.2")
set(hello_library_INCLUDE_DIRS ${hello_library_INCLUDE_DIRS_RELEASE} )
set(hello_library_INCLUDE_DIR ${hello_library_INCLUDE_DIRS_RELEASE} )
set(hello_library_LIBRARIES ${hello_library_LIBRARIES_RELEASE} )
set(hello_library_DEFINITIONS ${hello_library_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${hello_library_BUILD_MODULES_PATHS_RELEASE} )
    message(${hello_library_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()



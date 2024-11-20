# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(hello_library_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(hello_library_FRAMEWORKS_FOUND_RELEASE "${hello_library_FRAMEWORKS_RELEASE}" "${hello_library_FRAMEWORK_DIRS_RELEASE}")

set(hello_library_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET hello_library_DEPS_TARGET)
    add_library(hello_library_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET hello_library_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${hello_library_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${hello_library_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### hello_library_DEPS_TARGET to all of them
conan_package_library_targets("${hello_library_LIBS_RELEASE}"    # libraries
                              "${hello_library_LIB_DIRS_RELEASE}" # package_libdir
                              "${hello_library_BIN_DIRS_RELEASE}" # package_bindir
                              "${hello_library_LIBRARY_TYPE_RELEASE}"
                              "${hello_library_IS_HOST_WINDOWS_RELEASE}"
                              hello_library_DEPS_TARGET
                              hello_library_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "hello_library"    # package_name
                              "${hello_library_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${hello_library_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET hello_library::hello_library
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${hello_library_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${hello_library_LIBRARIES_TARGETS}>
                 )

    if("${hello_library_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET hello_library::hello_library
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     hello_library_DEPS_TARGET)
    endif()

    set_property(TARGET hello_library::hello_library
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${hello_library_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET hello_library::hello_library
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${hello_library_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET hello_library::hello_library
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${hello_library_LIB_DIRS_RELEASE}>)
    set_property(TARGET hello_library::hello_library
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${hello_library_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET hello_library::hello_library
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${hello_library_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(hello_library_LIBRARIES_RELEASE hello_library::hello_library)

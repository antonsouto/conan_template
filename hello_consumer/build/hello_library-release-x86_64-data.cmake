########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(hello_library_COMPONENT_NAMES "")
if(DEFINED hello_library_FIND_DEPENDENCY_NAMES)
  list(APPEND hello_library_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES hello_library_FIND_DEPENDENCY_NAMES)
else()
  set(hello_library_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(hello_library_PACKAGE_FOLDER_RELEASE "/home/pc-integracion/.conan2/p/hellod866cc1748696/p")
set(hello_library_BUILD_MODULES_PATHS_RELEASE )


set(hello_library_INCLUDE_DIRS_RELEASE "${hello_library_PACKAGE_FOLDER_RELEASE}/include")
set(hello_library_RES_DIRS_RELEASE )
set(hello_library_DEFINITIONS_RELEASE )
set(hello_library_SHARED_LINK_FLAGS_RELEASE )
set(hello_library_EXE_LINK_FLAGS_RELEASE )
set(hello_library_OBJECTS_RELEASE )
set(hello_library_COMPILE_DEFINITIONS_RELEASE )
set(hello_library_COMPILE_OPTIONS_C_RELEASE )
set(hello_library_COMPILE_OPTIONS_CXX_RELEASE )
set(hello_library_LIB_DIRS_RELEASE "${hello_library_PACKAGE_FOLDER_RELEASE}/lib")
set(hello_library_BIN_DIRS_RELEASE )
set(hello_library_LIBRARY_TYPE_RELEASE UNKNOWN)
set(hello_library_IS_HOST_WINDOWS_RELEASE 0)
set(hello_library_LIBS_RELEASE hello)
set(hello_library_SYSTEM_LIBS_RELEASE )
set(hello_library_FRAMEWORK_DIRS_RELEASE )
set(hello_library_FRAMEWORKS_RELEASE )
set(hello_library_BUILD_DIRS_RELEASE )
set(hello_library_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(hello_library_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${hello_library_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${hello_library_COMPILE_OPTIONS_C_RELEASE}>")
set(hello_library_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hello_library_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hello_library_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hello_library_EXE_LINK_FLAGS_RELEASE}>")


set(hello_library_COMPONENTS_RELEASE )
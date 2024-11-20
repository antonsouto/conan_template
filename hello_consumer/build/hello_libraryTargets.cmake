# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/hello_library-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${hello_library_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${hello_library_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET hello_library::hello_library)
    add_library(hello_library::hello_library INTERFACE IMPORTED)
    message(${hello_library_MESSAGE_MODE} "Conan: Target declared 'hello_library::hello_library'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/hello_library-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()
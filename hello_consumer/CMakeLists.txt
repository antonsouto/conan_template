cmake_minimum_required(VERSION 3.15)
project(hello_consumer)

# Incluyo Conan
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

# Encuentra el paquete hello_library generado por Conan
find_package(hello_library REQUIRED)

# Incluye directorios
include_directories(${CMAKE_SOURCE_DIR}/include)

# Añade los archivos fuente y enlaza la librería
add_executable(hello_consumer src/main.cpp src/program_simulator.cpp)
target_link_libraries(hello_consumer hello_library::hello_library)
 
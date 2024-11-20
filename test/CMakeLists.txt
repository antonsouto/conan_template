cmake_minimum_required(VERSION 3.10)
project(test_hello)

# Crear el ejecutable de prueba
add_executable(test_hello main.cpp)

# Enlazar el ejecutable de prueba con la biblioteca `hello`
target_link_libraries(test_hello hello)

cmake_minimum_required(VERSION 3.10)

# Configuración básica del proyecto
project(hello_project VERSION 0.1 DESCRIPTION "A Hello World Library")

# Crear la biblioteca estática `hello` usando el archivo fuente `hello.cpp`
add_library(hello STATIC src/hello.cpp)

# Configurar el directorio de inclusión para la biblioteca `hello`
target_include_directories(hello PUBLIC include)

# Incluir el subdirectorio de pruebas
add_subdirectory(test)

#!/bin/bash

# 1. Crear la carpeta build
mkdir -p build

# 2. Ejecutar Conan install
conan install . --build=missing -of=build/

# 3. Cambiar al directorio build
cd build

# 4. Ejecutar CMake con el tipo de construcción Release
cmake .. -DCMAKE_BUILD_TYPE=Release

# 5. Compilar con Make o msbuild si estas en windows
cmake --build .

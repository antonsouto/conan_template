#!/bin/bash

# Nombre de la biblioteca
LIB_NAME="hello_library"
LIB_VERSION="0.1"

# Paso 1: Crear carpeta de build si no existe
mkdir -p build
rm -rf build/* # Limpiar build para evitar archivos de configuración previos

# Paso 2: Instalar dependencias en la carpeta build
conan install . --build=missing -of=build/

# Paso 3: Cambiar al directorio build y ejecutar CMake para configuración y construcción
cd build
cmake .. 
cmake --build .

# Paso 4: Volver al directorio raíz y crear un paquete actualizado en cache local
cd ..
conan create . 

# Notificar al usuario
echo "Paquete ${LIB_NAME}/${LIB_VERSION} creado y almacenado en caché local con éxito."

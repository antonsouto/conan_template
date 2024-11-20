from conan import ConanFile
from conan.tools.cmake import CMake, CMakeToolchain, CMakeDeps
from conan.tools.files import copy
import os

class HelloWorldConan(ConanFile):
    name = "hello_library"
    version = "0.2"
    settings = "os", "compiler", "build_type", "arch"
    generators = "CMakeDeps", "CMakeToolchain"
    exports_sources = "src/*", "include/*", "test/*", "CMakeLists.txt"
    
    def requirements(self):
        # Define dependencias si tienes otras librerías que necesitas
        pass
    
    def build_requirements(self):
        # Necesitamos CMake para construir el proyecto
        # self.build_requires("cmake/[>=3.25]") No hace falta añadirlo como dependencia requerida para la construccion porque ya lo tengo isntalado de forma local en la máquina
        pass
        
    def package_info(self):
        self.cpp_info.libs = ["hello"]
        
    def configure(self):
        # En esta funcion configuramos las opciones de nuestro empaquetado, ej: biblioteca shared o static
        pass
        
    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        copy(self, "*.h", src=os.path.join(self.source_folder, "include"), dst=os.path.join(self.package_folder, "include"))
        copy(self, "*.a", src=self.build_folder, dst=os.path.join(self.package_folder, "lib"), keep_path=False)
        # Solo copia archivos .lib en Windows
        if self.settings.os == "Windows":
            copy(self, "*.lib", src=self.build_folder, dst=os.path.join(self.package_folder, "lib"), keep_path=False)

    def test(self):
        # Crear y configurar CMake en el directorio de test
        cmake = CMake(self)
        cmake.configure(source_folder="test")
        cmake.build()
        # Ejecutar el ejecutable de prueba para verificar la biblioteca
        self.run("./test/test_hello", cwd="test")
 
from conan import ConanFile
from conan.tools.cmake import CMake, CMakeToolchain, CMakeDeps


class HelloConsumerConan(ConanFile):
    name = "Hello_consumer"
    version = "0.1"
    settings = "os", "compiler", "build_type", "arch"
    generators = "CMakeDeps", "CMakeToolchain"
    exports_sources = "src/*", "include/*", "CMakeLists.txt"
    
    def requirements(self):
        self.requires("hello_library/[>=0.1]")
        
    
    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()
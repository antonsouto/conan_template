#pragma once
#include <string>

class Program {
private:
    std::string nombre_programa;
public:
    Program(std::string nombre) : nombre_programa(nombre) {}
    ~Program() = default;
    void run();
};

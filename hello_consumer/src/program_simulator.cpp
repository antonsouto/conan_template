#include "program_simulator.h"
#include "hello.h"
#include <iostream>

using namespace std;

void Program::run() {
    cout << "Hola, mi nombre es: " << nombre_programa << " y mi prueba de funcionamiento es: " << endl;
    hello();
}

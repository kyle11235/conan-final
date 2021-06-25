#include <iostream>

#include "module_d.h"
#include "module_b.h"


void module_b() {

    module_d();

    std::cout << "module_b = v0.0.1" <<std::endl;
    
}

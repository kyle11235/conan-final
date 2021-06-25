#include <iostream>

#include "module_d/module_d.h"
#include "module_c.h"


void module_c() {

    module_d();

    std::cout << "module_c = v0.1" <<std::endl;
    
}

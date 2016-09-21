#include <assert.h>
#include "cpe/utils/string_utils.h"
#include "gd/app/app_module.h"
#include "irr_runtime_module_i.hpp"

extern "C"
int irr_runtime_module_init_device(irr_runtime_module_t module) {
    return 0;
}
    
extern "C"
void irr_runtime_module_fini_device(irr_runtime_module_t module) {
}

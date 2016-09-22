#include <assert.h>
#include "cpe/utils/string_utils.h"
#include "gd/app/app_module.h"
#include "irr_runtime_module_i.hpp"

extern "C"
int irr_runtime_module_init_device(irr_runtime_module_t module) {
    module->m_device =
		createDevice(video::EDT_OGLES2, dimension2d<u32>(640, 480), 16, false, false, false, 0);
	if (module->m_device == NULL) {
        CPE_ERROR(module->m_em, "irr_runtime_module_init_device: create device fail!");
		return -1;
    }
    
    return 0;
}
    
extern "C"
void irr_runtime_module_fini_device(irr_runtime_module_t module) {
    module->m_device->drop();
    module->m_device = NULL;
}

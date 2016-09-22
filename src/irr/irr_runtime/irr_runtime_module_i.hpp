#ifndef IRR_RUNTIME_MODULE_I_H
#define IRR_RUNTIME_MODULE_I_H
#include <irrlicht.h>
#include "cpe/pal/pal_queue.h"
#include "cpe/utils/hash.h"
#include "irr/irr_runtime/irr_runtime_module.h"

extern "C" {

using namespace irr;
using namespace core;
using namespace scene;
using namespace video;
using namespace io;
//using namespace gui;

typedef struct irr_runtime_texture_data * irr_runtime_texture_data_t;

struct irr_runtime_module {
    gd_app_context_t m_app;
    mem_allocrator_t m_alloc;
    error_monitor_t m_em;
    uint8_t m_debug;

    plugin_app_env_module_t m_app_env;
    ui_runtime_module_t m_runtime;

    IrrlichtDevice * m_device;
};

int irr_runtime_module_init_device(irr_runtime_module_t module);
void irr_runtime_module_fini_device(irr_runtime_module_t module);

}

#endif

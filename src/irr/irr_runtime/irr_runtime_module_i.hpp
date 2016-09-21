#ifndef IRR_RUNTIME_MODULE_I_H
#define IRR_RUNTIME_MODULE_I_H
#include "cpe/pal/pal_queue.h"
#include "cpe/utils/hash.h"
#include "irr/irr_runtime/irr_runtime_module.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct irr_runtime_texture_data * irr_runtime_texture_data_t;

struct irr_runtime_module {
    gd_app_context_t m_app;
    mem_allocrator_t m_alloc;
    error_monitor_t m_em;
    uint8_t m_debug;

    ui_data_mgr_t m_data_mgr;
    ui_cache_manager_t m_cache_mgr;
};

int irr_runtime_module_init_device(irr_runtime_module_t module);
void irr_runtime_module_fini_device(irr_runtime_module_t module);

#ifdef __cplusplus
}
#endif

#endif

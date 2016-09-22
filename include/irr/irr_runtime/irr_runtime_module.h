#ifndef IRR_RUNTIME_MODULE_H
#define IRR_RUNTIME_MODULE_H
#include "cpe/utils/hash_string.h"
#include "gd/app/app_types.h"
#include "irr_runtime_types.h"

#ifdef __cplusplus
extern "C" {
#endif

irr_runtime_module_t
irr_runtime_module_create(
    gd_app_context_t app, mem_allocrator_t alloc,
    plugin_app_env_module_t app_env, ui_runtime_module_t runtime,
    const char * name, error_monitor_t em);

void irr_runtime_module_free(irr_runtime_module_t module);

gd_app_context_t irr_runtime_module_app(irr_runtime_module_t module);
const char * irr_runtime_module_name(irr_runtime_module_t module);

irr_runtime_module_t irr_runtime_module_find(gd_app_context_t app, cpe_hash_string_t name);
irr_runtime_module_t irr_runtime_module_find_nc(gd_app_context_t app, const char * name);

plugin_app_env_module_t irr_runtime_module_app_env(irr_runtime_module_t module);
ui_runtime_module_t irr_runtime_module_runtime(irr_runtime_module_t module);
ui_cache_manager_t irr_runtime_module_cache_mgr(irr_runtime_module_t module);
ui_data_mgr_t irr_runtime_module_data_mgr(irr_runtime_module_t module);

#ifdef __cplusplus
}
#endif

#endif

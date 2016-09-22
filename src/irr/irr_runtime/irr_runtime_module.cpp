#include <assert.h>
#include "cpe/pal/pal_strings.h"
#include "cpe/utils/string_utils.h"
#include "cpe/nm/nm_manage.h"
#include "cpe/nm/nm_read.h"
#include "gd/app/app_log.h"
#include "gd/app/app_module.h"
#include "gd/app/app_context.h"
#include "irr_runtime_module_i.hpp"

extern "C" {

static void irr_runtime_module_do_clear(nm_node_t node);

struct nm_node_type s_nm_node_type_irr_runtime_module = {
    "irr_runtime_module",
    irr_runtime_module_do_clear
};

static struct {
    const char * name; 
    int (*init)(irr_runtime_module_t module);
    void (*fini)(irr_runtime_module_t module);
} s_auto_reg_products[] = {
    { "device", irr_runtime_module_init_device, irr_runtime_module_fini_device }
};

irr_runtime_module_t
irr_runtime_module_create(
    gd_app_context_t app, mem_allocrator_t alloc,
    plugin_app_env_module_t app_env, ui_runtime_module_t runtime,
    const char * name, error_monitor_t em)
{
    struct irr_runtime_module * module;
    nm_node_t module_node;
    uint8_t component_pos;

    assert(app);
    
    if (name == NULL) name = "irr_runtime_module";

    module_node = nm_group_create(gd_app_nm_mgr(app), name, sizeof(struct irr_runtime_module));
    if (module_node == NULL) return NULL;

    module = (irr_runtime_module_t)nm_node_data(module_node);

    module->m_app = app;
    module->m_alloc = alloc;
    module->m_em = em;
    module->m_debug = 0;
    module->m_runtime = runtime;
    module->m_app_env = app_env;
    
    for(component_pos = 0; component_pos < CPE_ARRAY_SIZE(s_auto_reg_products); ++component_pos) {
        if (s_auto_reg_products[component_pos].init(module) != 0) {
            CPE_ERROR(em, "%s: regist product %s fail!", name, s_auto_reg_products[component_pos].name);
            for(; component_pos > 0; component_pos--) {
                s_auto_reg_products[component_pos - 1].fini(module);
            }
            nm_node_free(module_node);
            return NULL;
        }
    }

    nm_node_set_type(module_node, &s_nm_node_type_irr_runtime_module);

    return module;
}

static void irr_runtime_module_do_clear(nm_node_t node) {
    irr_runtime_module_t module;
    uint8_t i;
    uint8_t component_pos;

    module = (irr_runtime_module_t)nm_node_data(node);

    for(component_pos = CPE_ARRAY_SIZE(s_auto_reg_products); component_pos > 0; component_pos--) {
        s_auto_reg_products[component_pos - 1].fini(module);
    }
}

gd_app_context_t irr_runtime_module_app(irr_runtime_module_t module) {
    return module->m_app;
}

void irr_runtime_module_free(irr_runtime_module_t module) {
    nm_node_t module_node;
    assert(module);

    module_node = nm_node_from_data(module);
    if (nm_node_type(module_node) != &s_nm_node_type_irr_runtime_module) return;
    nm_node_free(module_node);
}

irr_runtime_module_t
irr_runtime_module_find(gd_app_context_t app, cpe_hash_string_t name) {
    nm_node_t node;

    node = nm_mgr_find_node(gd_app_nm_mgr(app), name);
    if (node == NULL || nm_node_type(node) != &s_nm_node_type_irr_runtime_module) return NULL;
    return (irr_runtime_module_t)nm_node_data(node);
}

irr_runtime_module_t
irr_runtime_module_find_nc(gd_app_context_t app, const char * name) {
    nm_node_t node;

    if(name == NULL) name = "irr_runtime_module";

    node = nm_mgr_find_node_nc(gd_app_nm_mgr(app), name);
    if (node == NULL || nm_node_type(node) != &s_nm_node_type_irr_runtime_module) return NULL;
    return (irr_runtime_module_t)nm_node_data(node);
}

const char * irr_runtime_module_name(irr_runtime_module_t module) {
    return nm_node_name(nm_node_from_data(module));
}

void irr_runtime_module_update(irr_runtime_module_t module, float delta) {
}

}

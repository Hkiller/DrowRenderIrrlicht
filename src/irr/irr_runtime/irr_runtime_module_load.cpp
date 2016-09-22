#include <assert.h>
#include "cpe/utils/string_utils.h"
#include "cpe/cfg/cfg_read.h"
#include "cpe/nm/nm_manage.h"
#include "cpe/nm/nm_read.h"
#include "gd/app/app_log.h"
#include "gd/app/app_module.h"
#include "gd/app/app_context.h"
#include "render/runtime/ui_runtime_module.h"
#include "plugin/app_env/plugin_app_env_module.h"
#include "irr_runtime_module_i.hpp"

extern "C" {

EXPORT_DIRECTIVE
int irr_runtime_module_app_init(gd_app_context_t app, gd_app_module_t module, cfg_t cfg) {
    irr_runtime_module_t irr_runtime_module;
    ui_runtime_module_t runtime;
    plugin_app_env_module_t app_env;
    struct cfg_it contexst_it;
    cfg_t context_cfg;

    runtime = ui_runtime_module_find_nc(app, NULL);
    if (runtime == NULL) {
        APP_CTX_ERROR(app, "create %s: runtime not exist", gd_app_module_name(module));
        return -1;
    }
    
    app_env = plugin_app_env_module_find_nc(app, NULL);
    if (app_env == NULL) {
        APP_CTX_ERROR(app, "create %s: app_env not exist", gd_app_module_name(module));
        return -1;
    }

    irr_runtime_module =
        irr_runtime_module_create(
            app, gd_app_alloc(app), app_env, runtime,
            gd_app_module_name(module), gd_app_em(app));
    if (irr_runtime_module == NULL) return -1;

    irr_runtime_module->m_debug = cfg_get_int32(cfg, "debug", 0);

    if (irr_runtime_module->m_debug) {
        CPE_INFO(
            gd_app_em(app), "%s: create: done",
            irr_runtime_module_name(irr_runtime_module));
    }

    return 0;
}

EXPORT_DIRECTIVE
void irr_runtime_module_app_fini(gd_app_context_t app, gd_app_module_t module) {
    irr_runtime_module_t irr_runtime_module;

    irr_runtime_module = irr_runtime_module_find_nc(app, gd_app_module_name(module));
    if (irr_runtime_module) {
        irr_runtime_module_free(irr_runtime_module);
    }
}

}

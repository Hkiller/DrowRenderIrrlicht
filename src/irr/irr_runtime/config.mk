product:=irr_runtime
$(product).type:=lib
$(product).depends:=irrlicht ui_runtime
$(product).c.libraries:=
$(product).c.sources:=$(wildcard $(product-base)/*.cpp)
$(product).c.export-symbols:= $(product-base)/symbols.def

DROW_RENDER_PRODUCTS+=$(product)
drow_render.all: $(product)
$(eval $(call product-def,$(product)))

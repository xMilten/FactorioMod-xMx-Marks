local color = require(xmx_path .. "lib/markColors")

-- Locomotive Mk2 --

local xmx_mk2_locomotive = table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])

xmx_mk2_locomotive.name = "xmx-mk2-locomotive"
xmx_mk2_locomotive.place_result = "xmx-mk2-locomotive"
xmx_mk2_locomotive.order = "a[train-system]-g[xmx-mk2-locomotive]"
xmx_mk2_locomotive.icons = { { icon = "__base__/graphics/icons/locomotive.png", tint = color.paint(10) } }

data:extend({ xmx_mk2_locomotive })

-- Cargo wagon Mk2 --

local xmx_mk2_cargo_wagon = table.deepcopy(data.raw["item-with-entity-data"]["cargo-wagon"])

xmx_mk2_cargo_wagon.name = "xmx-mk2-cargo-wagon"
xmx_mk2_cargo_wagon.place_result = "xmx-mk2-cargo-wagon"
xmx_mk2_cargo_wagon.order = "a[train-system]-i[xmx-mk2-cargo-wagon]"
xmx_mk2_cargo_wagon.icons = { { icon = "__base__/graphics/icons/cargo-wagon.png", tint = color.paint(10) } }

data:extend({ xmx_mk2_cargo_wagon })
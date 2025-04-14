local color = require(xmx_path .. "lib/markColors")

-- Locomotive Mk2 --

local xmx_mk2_locomotive = table.deepcopy(data.raw["locomotive"]["locomotive"])

xmx_mk2_locomotive.name = "xmx-mk2-locomotive"
xmx_mk2_locomotive.minable = { mining_time = 0.5, result = "xmx-mk2-locomotive" }
xmx_mk2_locomotive.corpse = "xmx-mk2-locomotive-remnants"
xmx_mk2_locomotive.icons = { { icon = "__base__/graphics/icons/locomotive.png", tint = color.paint(10) } }
xmx_mk2_locomotive.max_health = 2000
xmx_mk2_locomotive.max_speed = 2.4
xmx_mk2_locomotive.max_power = "1200kW"
xmx_mk2_locomotive.burner.fuel_inventory_size = 6
xmx_mk2_locomotive.pictures.layers[1].tint = color.paint(10)
xmx_mk2_locomotive.pictures.layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_locomotive })

-- Cargo wagon Mk2 --

local xmx_mk2_cargo_wagon = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])

xmx_mk2_cargo_wagon.name = "xmx-mk2-cargo-wagon"
xmx_mk2_cargo_wagon.minable = { mining_time = 0.5, result = "xmx-mk2-cargo-wagon" }
xmx_mk2_cargo_wagon.corpse = "xmx-mk2-cargo-wagon-remnants"
xmx_mk2_cargo_wagon.icons = { { icon = "__base__/graphics/icons/cargo-wagon.png", tint = color.paint(10) } }
xmx_mk2_cargo_wagon.max_health = 1600
xmx_mk2_cargo_wagon.max_speed = 3.0
xmx_mk2_cargo_wagon.inventory_size = 80
xmx_mk2_cargo_wagon.pictures.layers[1].tint = color.paint(10)
xmx_mk2_cargo_wagon.pictures.layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_cargo_wagon })
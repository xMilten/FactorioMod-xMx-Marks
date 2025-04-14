local color = require(xmx_path .. "lib/markColors")

-- Locomotive Mk2 remnants --

local xmx_mk2_locomotive_remnants = table.deepcopy(data.raw["corpse"]["locomotive-remnants"])

xmx_mk2_locomotive_remnants.name = "xmx-mk2-locomotive-remnants"
xmx_mk2_locomotive_remnants.icons = { { icon = "__base__/graphics/icons/locomotive.png", tint = color.paint(10) } }
xmx_mk2_locomotive_remnants.animation.layers[1].tint = color.paint(10)
xmx_mk2_locomotive_remnants.animation.layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_locomotive_remnants })

-- Cargo wagon Mk2 remnants --

local xmx_mk2_cargo_wagon_remnants = table.deepcopy(data.raw["corpse"]["cargo-wagon-remnants"])

xmx_mk2_cargo_wagon_remnants.name = "xmx-mk2-cargo-wagon-remnants"
xmx_mk2_cargo_wagon_remnants.icons = { { icon = "__base__/graphics/icons/cargo-wagon.png", tint = color.paint(10) } }
xmx_mk2_cargo_wagon_remnants.animation.tint = color.paint(10)
xmx_mk2_cargo_wagon_remnants.animation.hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_cargo_wagon_remnants })
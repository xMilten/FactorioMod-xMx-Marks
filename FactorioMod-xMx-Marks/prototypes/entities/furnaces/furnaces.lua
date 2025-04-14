local color = require(xmx_path .. "lib/markColors")

-- Electric furnace Mk2 --

local xmx_mk2_electric_furnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])

xmx_mk2_electric_furnace.name = "xmx-mk2-electric-furnace"
xmx_mk2_electric_furnace.minable = { mining_time = 0.2, result = "xmx-mk2-electric-furnace" }
xmx_mk2_electric_furnace.corpse = "xmx-mk2-electric-furnace-remnants"
xmx_mk2_electric_furnace.icons = { { icon = "__base__/graphics/icons/electric-furnace.png", tint = color.paint(13) } }
xmx_mk2_electric_furnace.max_health = 700
xmx_mk2_electric_furnace.module_specification.module_slots = 3
xmx_mk2_electric_furnace.crafting_speed = 3
xmx_mk2_electric_furnace.energy_usage = "270kW"
xmx_mk2_electric_furnace.animation.layers[1].tint = color.paint(13)
xmx_mk2_electric_furnace.animation.layers[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_electric_furnace })
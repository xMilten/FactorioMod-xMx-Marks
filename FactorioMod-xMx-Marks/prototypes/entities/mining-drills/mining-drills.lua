local color = require(xmx_path .. "lib/markColors")

-- Electric mining drill Mk2 --

local xmx_mk2_electric_mining_drill = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])

xmx_mk2_electric_mining_drill.name = "xmx-mk2-electric-mining-drill"
xmx_mk2_electric_mining_drill.minable = { mining_time = 0.3, result = "xmx-mk2-electric-mining-drill" }
xmx_mk2_electric_mining_drill.corpse = "xmx-mk2-electric-mining-drill-remnants"
xmx_mk2_electric_mining_drill.icons = { { icon = "__base__/graphics/icons/electric-mining-drill.png", tint = color.paint(13) } }
xmx_mk2_electric_mining_drill.max_health = 600
xmx_mk2_electric_mining_drill.mining_speed = 1
xmx_mk2_electric_mining_drill.energy_usage = "180kW"
xmx_mk2_electric_mining_drill.resource_searching_radius = 4.99
xmx_mk2_electric_mining_drill.module_specification.module_slots = 4
xmx_mk2_electric_mining_drill.graphics_set.animation.north.layers[1].tint = color.paint(13)
xmx_mk2_electric_mining_drill.graphics_set.animation.north.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_electric_mining_drill.graphics_set.animation.east.layers[1].tint = color.paint(13)
xmx_mk2_electric_mining_drill.graphics_set.animation.east.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_electric_mining_drill.graphics_set.animation.south.layers[1].tint = color.paint(13)
xmx_mk2_electric_mining_drill.graphics_set.animation.south.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_electric_mining_drill.graphics_set.animation.west.layers[1].tint = color.paint(13)
xmx_mk2_electric_mining_drill.graphics_set.animation.west.layers[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_electric_mining_drill })
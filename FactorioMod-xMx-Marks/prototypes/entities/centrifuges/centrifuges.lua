local color = require(xmx_path .. "lib/markColors")

-- Centrifuge Mk2 --

local xmx_mk2_centrifuge = table.deepcopy(data.raw["assembling-machine"]["centrifuge"])

xmx_mk2_centrifuge.name = "xmx-mk2-centrifuge"
xmx_mk2_centrifuge.minable = { mining_time = 0.1, result = "xmx-mk2-centrifuge" }
xmx_mk2_centrifuge.corpse = "xmx-mk2-centrifuge-remnants"
xmx_mk2_centrifuge.icons = { { icon = "__base__/graphics/icons/centrifuge.png", tint = color.paint(13) } }
xmx_mk2_centrifuge.fast_replaceable_group = "centrifuge"
xmx_mk2_centrifuge.max_health = 700
xmx_mk2_centrifuge.crafting_speed = 2
xmx_mk2_centrifuge.energy_usage = "700kW"
xmx_mk2_centrifuge.module_specification.module_slots = 3
xmx_mk2_centrifuge.idle_animation.layers[1].tint = color.paint(13)
xmx_mk2_centrifuge.idle_animation.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_centrifuge.idle_animation.layers[3].tint = color.paint(13)
xmx_mk2_centrifuge.idle_animation.layers[3].hr_version.tint = color.paint(13)
xmx_mk2_centrifuge.idle_animation.layers[5].tint = color.paint(13)
xmx_mk2_centrifuge.idle_animation.layers[5].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_centrifuge })
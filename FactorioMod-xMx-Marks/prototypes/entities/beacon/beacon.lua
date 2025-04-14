local color = require(xmx_path .. "lib/markColors")

-- Beacon Mk2 --

local xmx_mk2_beacon = table.deepcopy(data.raw["beacon"]["beacon"])

xmx_mk2_beacon.name = "xmx-mk2-beacon"
xmx_mk2_beacon.minable = { mining_time = 0.2, result = "xmx-mk2-beacon" }
xmx_mk2_beacon.corpse = "xmx-mk2-beacon-remnants"
xmx_mk2_beacon.fast_replaceable_group = "beacon"
xmx_mk2_beacon.icons = { { icon = "__base__/graphics/icons/beacon.png", tint = color.paint(13) } }
xmx_mk2_beacon.max_health = 400
xmx_mk2_beacon.supply_area_distance = 6
xmx_mk2_beacon.distribution_effectivity = 1
xmx_mk2_beacon.graphics_set.animation_list[1].animation.layers[1].tint = color.paint(13)
xmx_mk2_beacon.graphics_set.animation_list[1].animation.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_beacon.graphics_set.animation_list[2].animation.tint = color.paint(13)
xmx_mk2_beacon.graphics_set.animation_list[2].animation.hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_beacon })
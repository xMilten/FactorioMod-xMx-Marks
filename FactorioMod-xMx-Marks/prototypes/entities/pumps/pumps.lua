local color = require(xmx_path .. "lib/markColors")

-- Pump Mk2 --

local xmx_mk2_pump = table.deepcopy(data.raw["pump"]["pump"])

xmx_mk2_pump.name = "xmx-mk2-pump"
xmx_mk2_pump.minable = { mining_time = 0.2, result = "xmx-mk2-pump" }
xmx_mk2_pump.corpse = "xmx-mk2-pump-remnants"
xmx_mk2_pump.icons = { { icon = "__base__/graphics/icons/pump.png", tint = color.paint(13) } }
xmx_mk2_pump.max_health = 360
xmx_mk2_pump.pumping_speed = 800
xmx_mk2_pump.animations.north.tint = color.paint(13)
xmx_mk2_pump.animations.north.hr_version.tint = color.paint(13)
xmx_mk2_pump.animations.east.tint = color.paint(13)
xmx_mk2_pump.animations.east.hr_version.tint = color.paint(13)
xmx_mk2_pump.animations.south.tint = color.paint(13)
xmx_mk2_pump.animations.south.hr_version.tint = color.paint(13)
xmx_mk2_pump.animations.west.tint = color.paint(13)
xmx_mk2_pump.animations.west.hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_pump })

-- Offshore pump Mk2 --

local xmx_mk2_offshore_pump = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])

xmx_mk2_offshore_pump.name = "xmx-mk2-offshore-pump"
xmx_mk2_offshore_pump.minable = { mining_time = 0.1, result = "xmx-mk2-offshore-pump" }
xmx_mk2_offshore_pump.corpse = "xmx-mk2-offshore-pump-remnants"
xmx_mk2_offshore_pump.icons = { { icon = "__base__/graphics/icons/offshore-pump.png", tint = color.paint(13) } }
xmx_mk2_offshore_pump.max_health = 300
xmx_mk2_offshore_pump.pumping_speed = 80
xmx_mk2_offshore_pump.graphics_set.animation.north.layers[1].tint = color.paint(13)
xmx_mk2_offshore_pump.graphics_set.animation.north.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_offshore_pump.graphics_set.animation.east.layers[1].tint = color.paint(13)
xmx_mk2_offshore_pump.graphics_set.animation.east.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_offshore_pump.graphics_set.animation.south.layers[1].tint = color.paint(13)
xmx_mk2_offshore_pump.graphics_set.animation.south.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_offshore_pump.graphics_set.animation.west.layers[1].tint = color.paint(13)
xmx_mk2_offshore_pump.graphics_set.animation.west.layers[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_offshore_pump })
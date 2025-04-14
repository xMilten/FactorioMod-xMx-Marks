local color = require(xmx_path .. "lib/markColors")

-- Car Mk2 remnants --

local xmx_mk2_car = table.deepcopy(data.raw["corpse"]["car-remnants"])

xmx_mk2_car.name = "xmx-mk2-car-remnants"
xmx_mk2_car.icons = { { icon = "__base__/graphics/icons/car.png", tint = color.paint(10) } }
xmx_mk2_car.animation.layers[1].tint = color.paint(10)
xmx_mk2_car.animation.layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_car })

-- Tank Mk2 remnants --

local xmx_mk2_tank = table.deepcopy(data.raw["corpse"]["tank-remnants"])

xmx_mk2_tank.name = "xmx-mk2-tank-remnants"
xmx_mk2_tank.icons = { { icon = "__base__/graphics/icons/tank.png", tint = color.paint(10) } }
xmx_mk2_tank.animation.layers[1].tint = color.paint(10)
xmx_mk2_tank.animation.layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_tank })

-- Spidertron remnants Mk2 --

local xmx_mk2_spidertron = table.deepcopy(data.raw["corpse"]["spidertron-remnants"])

xmx_mk2_spidertron.name = "xmx-mk2-spidertron-remnants"
xmx_mk2_spidertron.icons = { { icon = "__base__/graphics/icons/spidertron.png", tint = color.paint(10) } }
xmx_mk2_spidertron.animation[1].layers[1].tint = color.paint(10)
xmx_mk2_spidertron.animation[1].layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_spidertron })
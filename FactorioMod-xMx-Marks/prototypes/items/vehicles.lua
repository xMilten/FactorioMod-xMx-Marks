local color = require(xmx_path .. "lib/markColors")

-- Car Mk2 --

local xmx_mk2_car = table.deepcopy(data.raw["item-with-entity-data"]["car"])

xmx_mk2_car.name = "xmx-mk2-car"
xmx_mk2_car.place_result = "xmx-mk2-car"
xmx_mk2_car.order = "b[personal-transport]-b[car]"
xmx_mk2_car.icons = { { icon = "__base__/graphics/icons/car.png", tint = color.paint(10) } }

data:extend({ xmx_mk2_car })

-- Tank Mk2 --

local xmx_mk2_tank = table.deepcopy(data.raw["item-with-entity-data"]["tank"])

xmx_mk2_tank.name = "xmx-mk2-tank"
xmx_mk2_tank.place_result = "xmx-mk2-tank"
xmx_mk2_tank.order = "b[personal-transport]-d[tank]"
xmx_mk2_tank.icons = { { icon = "__base__/graphics/icons/tank.png", tint = color.paint(10) } }

data:extend({ xmx_mk2_tank })

-- Spidertron Mk2 --

local xmx_mk2_spidertron = table.deepcopy(data.raw["item-with-entity-data"]["spidertron"])

xmx_mk2_spidertron.name = "xmx-mk2-spidertron"
xmx_mk2_spidertron.place_result = "xmx-mk2-spidertron"
xmx_mk2_spidertron.order = "b[personal-transport]-e[spidertron]-b[spider]"
xmx_mk2_spidertron.icons = { { icon = "__base__/graphics/icons/spidertron.png", tint = color.paint(10) } }

data:extend({ xmx_mk2_spidertron })
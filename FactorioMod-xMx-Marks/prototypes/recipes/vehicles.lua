-- Car Mk2 --

local xmx_mk2_car = table.deepcopy(data.raw.recipe["car"])

xmx_mk2_car.name = "xmx-mk2-car"
xmx_mk2_car.result = "xmx-mk2-car"
xmx_mk2_car.ingredients = { {"car", 2} }

data:extend({ xmx_mk2_car })

-- Tank Mk2 --

local xmx_mk2_tank = table.deepcopy(data.raw.recipe["tank"])

xmx_mk2_tank.name = "xmx-mk2-tank"
xmx_mk2_tank.normal.result = "xmx-mk2-tank"
xmx_mk2_tank.normal.ingredients = { {"tank", 2} }
xmx_mk2_tank.expensive.result = "xmx-mk2-tank"
xmx_mk2_tank.expensive.ingredients = { {"tank", 2} }

data:extend({ xmx_mk2_tank })

-- Spidertron Mk2 --

local xmx_mk2_spidertron = table.deepcopy(data.raw.recipe["spidertron"])

xmx_mk2_spidertron.name = "xmx-mk2-spidertron"
xmx_mk2_spidertron.result = "xmx-mk2-spidertron"
xmx_mk2_spidertron.ingredients = { {"spidertron", 2} }

data:extend({ xmx_mk2_spidertron })
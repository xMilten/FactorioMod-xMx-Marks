-- Pump Mk2 --

local xmx_mk2_pump = table.deepcopy(data.raw.recipe["pump"])

xmx_mk2_pump.name = "xmx-mk2-pump"
xmx_mk2_pump.result = "xmx-mk2-pump"
xmx_mk2_pump.ingredients = { {"electronic-circuit", 5}, {"pump", 2} }

data:extend({ xmx_mk2_pump })

-- Offshore pump Mk2 --

local xmx_mk2_offshore_pump = table.deepcopy(data.raw.recipe["offshore-pump"])

xmx_mk2_offshore_pump.name = "xmx-mk2-offshore-pump"
xmx_mk2_offshore_pump.result = "xmx-mk2-offshore-pump"
xmx_mk2_offshore_pump.ingredients = { {"advanced-circuit", 5}, {"offshore-pump", 2} }

data:extend({ xmx_mk2_offshore_pump })
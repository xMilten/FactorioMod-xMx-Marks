local color = require(xmx_path .. "lib/markColors")

-- Pump Mk2 remnants  --

local xmx_mk2_pump_remnants = table.deepcopy(data.raw["corpse"]["pump-remnants"])

xmx_mk2_pump_remnants.name = "xmx-mk2-pump-remnants"
xmx_mk2_pump_remnants.icons = { { icon = "__base__/graphics/icons/pump.png", tint = color.paint(13) } }
xmx_mk2_pump_remnants.animation[1].tint = color.paint(13)
xmx_mk2_pump_remnants.animation[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_pump_remnants })

-- Offshore pump Mk2 remnants  --

local xmx_mk2_offshore_pump_remnants = table.deepcopy(data.raw["corpse"]["offshore-pump-remnants"])

xmx_mk2_offshore_pump_remnants.name = "xmx-mk2-offshore-pump-remnants"
xmx_mk2_offshore_pump_remnants.icons = { { icon = "__base__/graphics/icons/offshore-pump.png", tint = color.paint(13) } }
xmx_mk2_offshore_pump_remnants.animation[1].tint = color.paint(13)
xmx_mk2_offshore_pump_remnants.animation[1].hr_version.tint = color.paint(13)   

data:extend({ xmx_mk2_offshore_pump_remnants })
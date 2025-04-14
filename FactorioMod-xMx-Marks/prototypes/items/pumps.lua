local color = require(xmx_path .. "lib/markColors")

-- Pump Mk2 --

local xmx_mk2_pump = table.deepcopy(data.raw.item["pump"])

xmx_mk2_pump.name = "xmx-mk2-pump"
xmx_mk2_pump.place_result = "xmx-mk2-pump"
xmx_mk2_pump.order = "g[xmx-mk2-pump]"
xmx_mk2_pump.icons = { { icon = "__base__/graphics/icons/pump.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_pump })

-- Offshore pump Mk2 --

local xmx_mk2_offshore_pump = table.deepcopy(data.raw.item["offshore-pump"])

xmx_mk2_offshore_pump.name = "xmx-mk2-offshore-pump"
xmx_mk2_offshore_pump.place_result = "xmx-mk2-offshore-pump"
xmx_mk2_offshore_pump.order = "g[xmx-mk2-offshore-pump]"
xmx_mk2_offshore_pump.icons = { { icon = "__base__/graphics/icons/offshore-pump.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_offshore_pump })
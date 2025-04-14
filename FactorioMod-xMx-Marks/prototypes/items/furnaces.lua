local color = require(xmx_path .. "lib/markColors")

-- Electric furnace Mk2 --

local xmx_mk2_electric_furnace = table.deepcopy(data.raw.item["electric-furnace"])

xmx_mk2_electric_furnace.name = "xmx-mk2-electric-furnace"
xmx_mk2_electric_furnace.place_result = "xmx-mk2-electric-furnace"
xmx_mk2_electric_furnace.order = "c[xmx-mk2-electric-furnace]"
xmx_mk2_electric_furnace.icons = { { icon = "__base__/graphics/icons/electric-furnace.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_electric_furnace })
local color = require(xmx_path .. "lib/markColors")

-- NAME Mk2 --

local xmx_mk2_NAME = table.deepcopy(data.raw.item["NAME"])

xmx_mk2_NAME.name = "xmx-mk2-NAME"
xmx_mk2_NAME.place_result = "xmx-mk2-NAME"
xmx_mk2_NAME.order = "g[xmx-mk2-NAME]"
xmx_mk2_NAME.icons = { { icon = "__base__/graphics/icons/NAME.png", tint = color.paint(10) } }

data:extend({ xmx_mk2_NAME })
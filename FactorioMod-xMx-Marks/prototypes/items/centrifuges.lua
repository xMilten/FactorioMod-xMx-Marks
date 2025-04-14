local color = require(xmx_path .. "lib/markColors")

-- Centrifuge Mk2 --

local xmx_mk2_centrifuge = table.deepcopy(data.raw.item["centrifuge"])

xmx_mk2_centrifuge.name = "xmx-mk2-centrifuge"
xmx_mk2_centrifuge.place_result = "xmx-mk2-centrifuge"
xmx_mk2_centrifuge.order = "g[xmx-mk2-centrifuge]"
xmx_mk2_centrifuge.icons = { { icon = "__base__/graphics/icons/centrifuge.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_centrifuge })
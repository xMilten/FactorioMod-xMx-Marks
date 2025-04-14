local color = require(xmx_path .. "lib/markColors")

-- Electric mining drill Mk2 --

local xmx_mk2_electric_mining_drill = table.deepcopy(data.raw.item["electric-mining-drill"])

xmx_mk2_electric_mining_drill.name = "xmx-mk2-electric-mining-drill"
xmx_mk2_electric_mining_drill.place_result = "xmx-mk2-electric-mining-drill"
xmx_mk2_electric_mining_drill.order = "g[xmx-mk2-electric-mining-drill]"
xmx_mk2_electric_mining_drill.icons = { { icon = "__base__/graphics/icons/electric-mining-drill.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_electric_mining_drill })
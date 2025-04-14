local color = require(xmx_path .. "lib/markColors")

-- Electric mining drill Mk2 remnants  --

local xmx_mk2_electric_mining_drill_remnants = table.deepcopy(data.raw["corpse"]["electric-mining-drill-remnants"])

xmx_mk2_electric_mining_drill_remnants.name = "xmx-mk2-electric-mining-drill-remnants"
xmx_mk2_electric_mining_drill_remnants.icons = { { icon = "__base__/graphics/icons/electric-mining-drill.png", tint = color.paint(13) } }
xmx_mk2_electric_mining_drill_remnants.animation[1].tint = color.paint(13)
xmx_mk2_electric_mining_drill_remnants.animation[1].hr_version.tint = color.paint(13)
xmx_mk2_electric_mining_drill_remnants.animation[2].tint = color.paint(13)
xmx_mk2_electric_mining_drill_remnants.animation[2].hr_version.tint = color.paint(13)
xmx_mk2_electric_mining_drill_remnants.animation[3].tint = color.paint(13)
xmx_mk2_electric_mining_drill_remnants.animation[3].hr_version.tint = color.paint(13)
xmx_mk2_electric_mining_drill_remnants.animation[4].tint = color.paint(13)
xmx_mk2_electric_mining_drill_remnants.animation[4].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_electric_mining_drill_remnants })
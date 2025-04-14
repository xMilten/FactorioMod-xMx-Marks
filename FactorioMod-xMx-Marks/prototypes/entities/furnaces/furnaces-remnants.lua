local color = require(xmx_path .. "lib/markColors")

-- Electric furnace Mk2 remnants  --

local xmx_mk2_electric_furnace_remnants = table.deepcopy(data.raw["corpse"]["electric-furnace-remnants"])

xmx_mk2_electric_furnace_remnants.name = "xmx-mk2-electric-furnace-remnants"
xmx_mk2_electric_furnace_remnants.icons = { { icon = "__base__/graphics/icons/electric-furnace.png", tint = color.paint(13) } }
xmx_mk2_electric_furnace_remnants.animation.tint = color.paint(13)
xmx_mk2_electric_furnace_remnants.animation.hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_electric_furnace_remnants })
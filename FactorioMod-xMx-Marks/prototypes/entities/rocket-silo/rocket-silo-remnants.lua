local color = require(xmx_path .. "lib/markColors")

-- Rocket silo Mk2 remnants  --

local xmx_mk2_rocket_silo_remnants = table.deepcopy(data.raw["corpse"]["rocket-silo-remnants"])

xmx_mk2_rocket_silo_remnants.name = "xmx-mk2-rocket-silo-remnants"
xmx_mk2_rocket_silo_remnants.icons = { { icon = "__base__/graphics/icons/rocket-silo.png", tint = color.paint(12) } }
xmx_mk2_rocket_silo_remnants.animation[1].tint = color.paint(12)
xmx_mk2_rocket_silo_remnants.animation[1].hr_version.tint = color.paint(12)

data:extend({ xmx_mk2_rocket_silo_remnants })
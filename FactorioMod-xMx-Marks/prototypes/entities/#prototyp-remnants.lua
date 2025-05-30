local color = require(xmx_path .. "lib/markColors")

-- NAME Mk2 remnants  --

local xmx_mk2_NAME_remnants = table.deepcopy(data.raw["corpse"]["NAME-remnants"])

xmx_mk2_NAME_remnants.name = "xmx-mk2-NAME-remnants"
xmx_mk2_NAME_remnants.icons = { { icon = "__base__/graphics/icons/NAME.png", tint = color.paint(10) } }
xmx_mk2_NAME_remnants.animation[1].tint = color.paint(10)
xmx_mk2_NAME_remnants.animation[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_NAME_remnants })
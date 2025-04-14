local color = require(xmx_path .. "lib/markColors")

-- Centrifuge Mk2 remnants  --

local xmx_mk2_centrifuge_remnants = table.deepcopy(data.raw["corpse"]["centrifuge-remnants"])

xmx_mk2_centrifuge_remnants.name = "xmx-mk2-centrifuge-remnants"
xmx_mk2_centrifuge_remnants.icons = { { icon = "__base__/graphics/icons/centrifuge.png", tint = color.paint(13) } }
xmx_mk2_centrifuge_remnants.animation[1].tint = color.paint(13)
xmx_mk2_centrifuge_remnants.animation[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_centrifuge_remnants })
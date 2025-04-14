local color = require(xmx_path .. "lib/markColors")

-- Name Mk2 --

local xmx_mk2_NAME = table.deepcopy(data.raw["TYPE"]["NAME"])

xmx_mk2_NAME.name = "xmx-mk2-NAME"
xmx_mk2_NAME.minable = { mining_time = 0.2, result = "xmx-mk2-NAME" }
xmx_mk2_NAME.corpse = "xmx-mk2-NAME-remnants"
xmx_mk2_NAME.icons = { { icon = "__base__/graphics/icons/NAME.png", tint = color.paint(10) } }
xmx_mk2_NAME.max_health = 700
xmx_mk2_NAME.hand_base_picture.tint = color.paint(10)
xmx_mk2_NAME.hand_base_picture.hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_NAME })
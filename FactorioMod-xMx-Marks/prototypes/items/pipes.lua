local color = require(xmx_path .. "lib/markColors")

data:extend({{
    type = "item",
    name = "xmx-mk2-pipe-to-ground",
    icons = {
        {
            icon = "__base__/graphics/icons/pipe-to-ground.png",
            tint = color.paint(14)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "pipe-distribution",
    order = "a[pipe]-c[xmx-mk2-pipe-to-ground]",
    place_result = "xmx-mk2-pipe-to-ground",
    stack_size = 50
}})
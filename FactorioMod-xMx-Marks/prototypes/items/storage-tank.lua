local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
        type = "item",
        name = "xmx-mk2-storage-tank",
        icons = {
          {
            icon = "__base__/graphics/icons/storage-tank.png",
            tint = color.paint(14)
          }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "pipe-distribution",
        order = "b[pipe]-e[xmx-mk2-storage-tank]",
        place_result = "xmx-mk2-storage-tank",
        stack_size = 50
    }
})
local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
		type = "item",
		name = "xmx-mk2-small-lamp",
		icons = {
			{
			  icon = "__base__/graphics/icons/small-lamp.png",
			},
			{
			  icon = xmx_icons_entities_path .. "small-lamp.png",
			  tint = color.paint(3)
			}
		},
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "circuit-network",
		order = "a[light]-b[xmx-mk2-small-lamp]",
		place_result = "xmx-mk2-small-lamp",
		stack_size = 50
    }
})
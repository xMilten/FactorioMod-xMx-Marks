local color = require(xmx_path .. "lib/markColors")

data:extend({
	{
		type = "item",
		name = "xmx-mk2-medium-electric-pole",
		icons = {
			{
				icon = "__base__/graphics/icons/medium-electric-pole.png",
                tint = color.paint(12)
			}
		},
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "energy-distribution",
		order = "a[energy]-b[xmx-mk2-medium-electric-pole]",
		place_result = "xmx-mk2-medium-electric-pole",
		stack_size = 50
	},
	{
		type = "item",
		name = "xmx-mk2-big-electric-pole",
		icons = {
			{
				icon = "__base__/graphics/icons/big-electric-pole.png",
                tint = color.paint(12)
			}
		},
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "energy-distribution",
		order = "a[energy]-c[xmx-mk2-big-electric-pole]",
		place_result = "xmx-mk2-big-electric-pole",
		stack_size = 50
	},
	{
		type = "item",
		name = "xmx-mk2-substation",
		icons = {
			{
				icon = "__base__/graphics/icons/substation.png",
                tint = color.paint(12)
			}
		},
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "energy-distribution",
		order = "a[energy]-d[xmx-mk2-substation]",
		place_result = "xmx-mk2-substation",
		stack_size = 50
	}
})
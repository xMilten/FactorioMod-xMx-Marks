local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "item",
		name = "xmx-mk2-construction-robot",
		icon_size = 64, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/construction-robot.png",
                tint = color.paint(12)
			}
		},
		subgroup = "logistic-network",
		order = "a[robot]-b[xmx-mk2-construction-robot]",
		place_result = "xmx-mk2-construction-robot",
		stack_size = 50
    },
    {
	    type = "item",
		name = "xmx-mk2-logistic-robot",
		icon_size = 64, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/logistic-robot.png",
                tint = color.paint(12)
			}
		},
		subgroup = "logistic-network",
		order = "a[robot]-a[xmx-mk2-logistic-robot]",
		place_result = "xmx-mk2-logistic-robot",
		stack_size = 50
    }
})
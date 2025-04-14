local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "item",
		name = "xmx-mk2-roboport",
		icon_size = 64, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/roboport.png",
                tint = color.paint(12)
			}
		},
        subgroup = "logistic-network",
        order = "c[signal]-a[xmx-mk2-roboport]",
        place_result = "xmx-mk2-roboport",
        stack_size = 10
    }
})
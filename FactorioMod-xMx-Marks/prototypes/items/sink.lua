local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "item",
		name = "xmx-sink",
		icons = {
			{
				icon = xmx_icons_entities_path .. "sink.png",
                tint = color.paint(3)
			}
		},
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "defensive-structure",
		order = "b[fluid]-a[xmx-sink]",
		place_result = "xmx-sink",
		stack_size = 50
    }
})
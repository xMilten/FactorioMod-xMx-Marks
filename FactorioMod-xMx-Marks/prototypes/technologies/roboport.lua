local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-roboport",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = xmx_technologies_path .. "/roboport.png",
                tint = color.paint(12)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-roboport"
            }
        },
        prerequisites = {"construction-robotics", "logistic-robotics", "production-science-pack"},
        unit = {
            count = 200,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        order = "c-k-d"
    }
})
local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-construction-robotics",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/construction-robotics.png",
                tint = color.paint(12)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-construction-robot"
            }
        },
        prerequisites = {"construction-robotics", "production-science-pack"},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        order = "c-k-a"
    },
    {
	    type = "technology",
		name = "xmx-mk2-logistic-robotics",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/logistic-robotics.png",
                tint = color.paint(12)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-logistic-robot"
            }
        },
        prerequisites = {"logistic-robotics", "production-science-pack"},
        unit = {
            count = 300,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        order = "c-k-c"
    }
})
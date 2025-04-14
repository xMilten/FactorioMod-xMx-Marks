local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-electric-energy-distribution-3",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
                tint = color.paint(12)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-medium-electric-pole"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-big-electric-pole"
            }
        },
        prerequisites = {"electric-energy-distribution-2", "production-science-pack"},
        unit = {
            count = 120,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 45
        },
        order = "c-e-d"
    },
    {
	    type = "technology",
		name = "xmx-electric-energy-distribution-4",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
                tint = color.paint(12)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-substation"
            }
        },
        prerequisites = {"xmx-electric-energy-distribution-3", "utility-science-pack"},
        unit = {
            count = 140,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 45
        },
        order = "c-e-e"
    }
})
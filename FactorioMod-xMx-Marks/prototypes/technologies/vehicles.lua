local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-car",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/automobilism.png",
                tint = color.paint(10)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-car"
            }
        },
        prerequisites = {"automobilism", "production-science-pack"},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 30
        },
        order = "e-c"
    },
    {
	    type = "technology",
		name = "xmx-mk2-tank",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/tank.png",
                tint = color.paint(10)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-tank"
            }
        },
        prerequisites = {"tank", "utility-science-pack"},
        unit = {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
            },
            time = 30
        },
        order = "e-c-c"
    },
    {
	    type = "technology",
		name = "xmx-mk2-spidertron",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/spidertron.png",
                tint = color.paint(10)
			}
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-spidertron"
            }
        },
        prerequisites = {"spidertron", "space-science-pack"},
        unit = {
            count = 2500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 30
        },
        order = "d-e-g"
    }
})
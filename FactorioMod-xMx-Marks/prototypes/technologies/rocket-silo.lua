local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-small-rocket-silo",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
            {
                icon = "__base__/graphics/technology/rocket-silo.png",
                tint = color.paint(13)
            }
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-small-rocket-silo"
            }
        },
        prerequisites = {"concrete", "speed-module-3", "productivity-module-3", "rocket-fuel", "rocket-control-unit"},
        unit = {
            count = 250,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        order = "k-a"
    }
})
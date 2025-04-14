local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-oil-processing",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
            {
                icon = "__base__/graphics/technology/oil-gathering.png",
                tint = color.paint(13)
            }
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-pumpjack"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-oil-refinery"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-chemical-plant"
            }
        },
        prerequisites = {"production-science-pack"},
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
        order = "d-a"
    }
})
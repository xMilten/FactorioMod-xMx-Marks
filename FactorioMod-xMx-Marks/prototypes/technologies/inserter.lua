local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-fast-stack-inserter",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
            {
                icon = "__base__/graphics/technology/stack-inserter.png",
                tint = color.paint(24)
            }
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-fast-stack-inserter"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-fast-stack-filter-inserter"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-long-handed-stack-inserter"
            }
        },
        prerequisites = {"stack-inserter", "utility-science-pack"},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-o-a"
    }
})
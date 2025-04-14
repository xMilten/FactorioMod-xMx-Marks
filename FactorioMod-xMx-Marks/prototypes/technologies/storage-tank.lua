local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-storage-tank",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
            {
                icon = "__base__/graphics/technology/fluid-handling.png",
                tint = color.paint(14)
            }
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-storage-tank"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-pipe-to-ground"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-pump"
            },
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-offshore-pump"
            }
        },
        prerequisites = {"fluid-handling", "production-science-pack"},
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 15
        },
        order = "a-h-d"
    }
})
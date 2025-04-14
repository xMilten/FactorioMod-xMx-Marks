local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-electric-mining-drill",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
            {
                icon = "__base__/graphics/technology/mining-productivity.png",
                tint = color.paint(13)
            }
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-electric-mining-drill"
            }
        },
        prerequisites = {"chemical-science-pack"},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        order = "c-c-b"
    }
})
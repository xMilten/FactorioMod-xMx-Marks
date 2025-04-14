local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-beacon",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
            {
                icon = "__base__/graphics/technology/effect-transmission.png",
                tint = color.paint(13)
            }
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-beacon"
            }
        },
        prerequisites = {"effect-transmission", "space-science-pack"},
        unit = {
            count = 20,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 30
        },
        order = "a-h-c"
    }
})
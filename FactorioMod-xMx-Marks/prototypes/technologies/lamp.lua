local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "technology",
		name = "xmx-mk2-optics",
		icon_size = 256, icon_mipmaps = 4,
		icons = {
            {
                icon = "__base__/graphics/technology/lamp.png"
            },
            {
                icon = xmx_technologies_path .. "/lamp.png",
                tint = color.paint(3)
            }
		},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk2-small-lamp"
            }
        },
        prerequisites = {"optics", "chemical-science-pack"},
        unit = {
            count = 20,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30
        },
        order = "a-h-b"
    }
})
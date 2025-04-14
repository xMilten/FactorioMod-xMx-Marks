local color = require(xmx_path .. "lib/markColors")

data:extend({
{
    type = "technology",
    name = "xmx-mk2-steam-power",
    icon_size = 256, icon_mipmaps = 4,
    icons = {
        {
            icon = xmx_technologies_path .. "boiler.png",
            tint = color.paint(14)
        }
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-boiler"
        },
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-steam-engine"
        }
    },
    prerequisites = {"logistic-science-pack"},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    },
    order = "a-h-d"
},
{
    type = "technology",
    name = "xmx-mk2-solar-energy",
    icon_size = 256, icon_mipmaps = 4,
    icons = {
        {
            icon = "__base__/graphics/technology/solar-energy.png",
            tint = color.paint(16)
        }
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-solar-panel"
        }
    },
    prerequisites = {"solar-energy", "production-science-pack"},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 30
    },
    order = "c-e-e"
},
{
    type = "technology",
    name = "xmx-mk2-electric-energy-accumulators",
    icon_size = 256, icon_mipmaps = 4,
    icons = {
        {
            icon = "__base__/graphics/technology/electric-energy-acumulators.png",
            tint = color.paint(16)
        }
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-accumulator"
        }
    },
    prerequisites = {"electric-energy-accumulators", "production-science-pack"},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 30
    },
    order = "c-e-d"
},
{
    type = "technology",
    name = "xmx-mk2-nuclear-power",
    icon_size = 256, icon_mipmaps = 4,
    icons = {
        {
            icon = "__base__/graphics/technology/nuclear-power.png",
            tint = color.paint(16)
        }
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-nuclear-reactor"
        },
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-heat-exchanger"
        },
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-heat-pipe"
        },
        {
            type = "unlock-recipe",
            recipe = "xmx-mk2-steam-turbine"
        }
    },
    prerequisites = {"nuclear-power", "space-science-pack"},
    unit = {
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 30,
        count = 1200
    },
    order = "e-p-b-c"
}
})
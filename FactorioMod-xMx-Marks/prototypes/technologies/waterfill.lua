data:extend({
    {
        type = "technology",
        name = "xmx-waterfill",
        icon = xmx_technologies_path .. "waterfill.png",
        prerequisites = {"landfill"},
        icon_size = 256,
        icon_mipmaps = 4,
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 25
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-waterfill"
            }
        },
        order = "b-d"
    }
})
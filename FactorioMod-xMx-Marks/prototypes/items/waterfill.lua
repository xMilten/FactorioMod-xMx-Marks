data:extend({
    {
        type = "item",
        name = "xmx-waterfill",
        icon = xmx_icons_entities_path .. "waterfill.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "terrain",
        order = "c[landfill]-b[water]",
        stack_size = 200,
        place_as_tile = {
            result = "water",
            condition_size = 1,
            condition = { "water-tile" }
        }
    }
})
local color = require(xmx_path .. "lib/markColors")

data:extend({
{
    type = "item",
    name = "xmx-mk2-boiler",
    icons = {
        {
            icon = "__base__/graphics/icons/boiler.png",
            tint = color.paint(14)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "a[steam-power]-b[xmx-mk2-boiler]",
    place_result = "xmx-mk2-boiler",
    stack_size = 50
},
{
    type = "item",
    name = "xmx-mk2-steam-engine",
    icons = {
        {
            icon = "__base__/graphics/icons/steam-engine.png",
            tint = color.paint(14)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "b[steam-power]-b[xmx-mk2-steam-engine]",
    place_result = "xmx-mk2-steam-engine",
    stack_size = 10
},
{
    type = "item",
    name = "xmx-mk2-solar-panel",
    icons = {
        {
            icon = "__base__/graphics/icons/solar-panel.png",
            tint = color.paint(16)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "c[solar-panel]-b[xmx-mk2-solar-panel]",
    place_result = "xmx-mk2-solar-panel",
    stack_size = 50
},
{
    type = "item",
    name = "xmx-mk2-accumulator",
    icons = {
        {
            icon = "__base__/graphics/icons/accumulator.png",
            tint = color.paint(16)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[accumulator]-b[xmx-mk2-accumulator]",
    place_result = "xmx-mk2-accumulator",
    stack_size = 50
},
{
    type = "item",
    name = "xmx-mk2-nuclear-reactor",
    icons = {
        {
            icon = "__base__/graphics/icons/nuclear-reactor.png",
            tint = color.paint(16)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "nuclear-energy",
    order = "a[nuclear-energy]-b[xmx-mk2-reactor]",
    place_result = "xmx-mk2-nuclear-reactor",
    stack_size = 10
},
{
    type = "item",
    name = "xmx-mk2-heat-pipe",
    icons = {
        {
            icon = "__base__/graphics/icons/heat-pipe.png",
            tint = color.paint(16)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "nuclear-energy",
    order = "b[nuclear-energy]-b[xmx-mk2-heat-pipe]",
    place_result = "xmx-mk2-heat-pipe",
    stack_size = 50
},
{
    type = "item",
    name = "xmx-mk2-heat-exchanger",
    icons = {
        {
            icon = "__base__/graphics/icons/heat-boiler.png",
            tint = color.paint(16)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "nuclear-energy",
    order = "c[nuclear-energy]-b[xmx-mk2-heat-exchanger]",
    place_result = "xmx-mk2-heat-exchanger",
    stack_size = 50
},
{
    type = "item",
    name = "xmx-mk2-steam-turbine",
    icons = {
        {
            icon = "__base__/graphics/icons/steam-turbine.png",
            tint = color.paint(16)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "nuclear-energy",
    order = "d[nuclear-energy]-b[xmx-mk2-steam-turbine]",
    place_result = "xmx-mk2-steam-turbine",
    stack_size = 10
}
})
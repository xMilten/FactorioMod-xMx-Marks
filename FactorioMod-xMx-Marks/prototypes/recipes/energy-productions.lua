data:extend({
{
    type = "recipe",
    name = "xmx-mk2-boiler",
    enabled = false,
    ingredients = {
        {"boiler", 4},
        {"electronic-circuit", 5}
    },
    result = "xmx-mk2-boiler"
},
{
    type = "recipe",
    name = "xmx-mk2-steam-engine",
    enabled = false,
    normal = {
        ingredients = {
            {"steam-engine", 4},
            {"electronic-circuit", 5}
        },
        result = "xmx-mk2-steam-engine"
    },
    expensive = {
        ingredients = {
            {"steam-engine", 4},
            {"electronic-circuit", 10}
        },
        result = "xmx-mk2-steam-engine"
    }
},
{
    type = "recipe",
    name = "xmx-mk2-solar-panel",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"solar-panel", 4},
        {"advanced-circuit", 5}
    },
    result = "xmx-mk2-solar-panel"
},
{
    type = "recipe",
    name = "xmx-mk2-accumulator",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"accumulator", 4},
        {"advanced-circuit", 5}
    },
    result = "xmx-mk2-accumulator"
},
{
    type = "recipe",
    name = "xmx-mk2-nuclear-reactor",
    energy_required = 8,
    enabled = false,
    ingredients = {
        {"nuclear-reactor", 4},
        {"processing-unit", 5}
    },
    result = "xmx-mk2-nuclear-reactor",
    requester_paste_multiplier = 1
},
{
    type = "recipe",
    name = "xmx-mk2-heat-pipe",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"heat-pipe", 4},
        {"processing-unit", 1}
    },
    result = "xmx-mk2-heat-pipe"
},
{
    type = "recipe",
    name = "xmx-mk2-heat-exchanger",
    energy_required = 3,
    enabled = false,
    ingredients = {
        {"heat-exchanger", 4},
        {"processing-unit", 5}
    },
    result = "xmx-mk2-heat-exchanger"
},
{
    type = "recipe",
    name = "xmx-mk2-steam-turbine",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {"steam-turbine", 4},
        {"processing-unit", 5}
    },
    result = "xmx-mk2-steam-turbine"
}
})
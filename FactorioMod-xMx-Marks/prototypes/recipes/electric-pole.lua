local color = require(xmx_path .. "lib/markColors")

data:extend({
    {
	    type = "recipe",
		name = "xmx-mk2-medium-electric-pole",
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {"medium-electric-pole", 1},
            {"advanced-circuit", 5}
        },
        result = "xmx-mk2-medium-electric-pole"
    },
    {
	    type = "recipe",
		name = "xmx-mk2-big-electric-pole",
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {"big-electric-pole", 1},
            {"advanced-circuit", 5}
        },
        result = "xmx-mk2-big-electric-pole"
    },
    {
	    type = "recipe",
		name = "xmx-mk2-substation",
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {"substation", 1},
            {"processing-unit", 5}
        },
        result = "xmx-mk2-substation"
    }
})
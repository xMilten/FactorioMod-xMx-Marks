data:extend({
    {
	    type = "recipe",
		name = "xmx-electric-mining-drill",
        normal = {
            energy_required = 2,
            ingredients = {
                {"electronic-circuit", 2},
                {"iron-gear-wheel", 2},
                {"iron-plate", 8},
                {"burner-mining-drill", 1}
            },
            result = "electric-mining-drill"
        },
        expensive = {
            energy_required = 2,
            ingredients = {
                {"electronic-circuit", 3},
                {"iron-gear-wheel", 4},
                {"iron-plate", 15},
                {"burner-mining-drill", 1}
            },
            result = "electric-mining-drill"
        }
    }
})
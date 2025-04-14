local assembling_machine_names = {
	[1] = "assembling-machine-1",
	[2] = "xmx-mk2-assembling-machine",
	[3] = "assembling-machine-2",
	[4] = "xmx-mk4-assembling-machine",
	[5] = "assembling-machine-3",
	[6] = "xmx-mk6-assembling-machine"
}

function createXmxMarksAssemblingMachineRecipes(data)
	local name = data.name
	local category = data.category or nil
	local enabled = data.enabled or false
	local ingredients = data.ingredients
	local result_count = data.result_count or 1
	
	return {
		type = "recipe",
		name = name,
		category = category,
		enabled = enabled,
		energy_required = 0.5,
		ingredients = ingredients,
		result = name,
		result_count = result_count,
		mod = "xMx Marks"
	}
end

local assemblingMachineRecipes = {
	------------------------------------
	-- Transport Belts
	------------------------------------
	createXmxMarksAssemblingMachineRecipes {
		name = assembling_machine_names[2],
		ingredients = {
            {"steel-plate", 2},
            {"electronic-circuit", 3},
            {"iron-gear-wheel", 5},
            {assembling_machine_names[1], 1}
		}
	},
	createXmxMarksAssemblingMachineRecipes {
		name = assembling_machine_names[4],
		ingredients = {
            {"speed-module", 1},
			{assembling_machine_names[3], 1}
		}
	},
	createXmxMarksAssemblingMachineRecipes {
		name = assembling_machine_names[6],
		ingredients = {
            {"speed-module-3", 1},
			{assembling_machine_names[5], 1}
		}
	}
}

data:extend(assemblingMachineRecipes)
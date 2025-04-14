--------------------------------------------------------------------------------------------------------------
-- Transport Belts
--------------------------------------------------------------------------------------------------------------
local transport_belt_names = {
	[1] = "xmx-mk1-transport-belt",
	[2] = "transport-belt",
	[3] = "fast-transport-belt",
	[4] = "express-transport-belt",
	[5] = "xmx-mk5-transport-belt",
	[6] = "xmx-mk6-transport-belt"
}
local underground_belt_names = {
	[1] = "xmx-mk1-underground-belt",
	[2] = "underground-belt",
	[3] = "fast-underground-belt",
	[4] = "express-underground-belt",
	[5] = "xmx-mk5-underground-belt",
	[6] = "xmx-mk6-underground-belt"
}
local splitter_names = {
	[1] = "xmx-mk1-splitter",
	[2] = "splitter",
	[3] = "fast-splitter",
	[4] = "express-splitter",
	[5] = "xmx-mk5-splitter",
	[6] = "xmx-mk6-splitter"
}

function createXmxMarksTransportBeltRecipes(data)
	local name = data.name
	local category = data.category or nil
	local enabled = data.enabled or false
	local energy_required = data.energy_required or 1
	local ingredients = data.ingredients
	local result_count = data.result_count or 1
	
	return {
		type = "recipe",
		name = name,
		category = category,
		enabled = enabled,
		energy_required = energy_required,
		ingredients = ingredients,
		result = name,
		result_count = result_count,
		mod = "xMx Marks"
	}
end

local transportBeltRecipes = {
	------------------------------------
	-- Transport Belts
	------------------------------------
	createXmxMarksTransportBeltRecipes {
		name = transport_belt_names[1],
		energy_required = 0.5,
		enabled = true,
		ingredients = {
			{"iron-plate", 1},
			{"iron-gear-wheel", 1}
		},
		result_count = 2
	},
	createXmxMarksTransportBeltRecipes {
		name = transport_belt_names[5],
		energy_required = 0.5,
		category = "crafting-with-fluid",
		ingredients = {
			{"steel-plate", 2},
			{transport_belt_names[4], 1},
			{type="fluid", name="lubricant", amount=20}
		}
	},
	createXmxMarksTransportBeltRecipes {
		name = transport_belt_names[6],
		energy_required = 0.5,
		category = "crafting-with-fluid",
		ingredients = {
			{"steel-plate", 2},
			{transport_belt_names[5], 1},
			{type="fluid", name="lubricant", amount=20}
		}
	},
	------------------------------------
	-- Underground Belts
	------------------------------------
	createXmxMarksTransportBeltRecipes {
		name = underground_belt_names[1],
		energy_required = 1,
		ingredients = {
			{"iron-plate", 10},
			{"xmx-mk1-transport-belt", 5}
		},
		result_count = 2
	},
	createXmxMarksTransportBeltRecipes {
		name = underground_belt_names[5],
		energy_required = 3,
		category = "crafting-with-fluid",
		ingredients = {
			{"steel-plate", 32},
			{underground_belt_names[4], 2},
			{type="fluid", name="lubricant", amount=40}
		},
		result_count = 2
	},
	createXmxMarksTransportBeltRecipes {
		name = underground_belt_names[6],
		energy_required = 3,
		category = "crafting-with-fluid",
		ingredients = {
			{"steel-plate", 32},
			{underground_belt_names[5], 2},
			{type="fluid", name="lubricant", amount=40}
		},
		result_count = 2
	},
	------------------------------------
	-- Splitter
	------------------------------------
	createXmxMarksTransportBeltRecipes {
		name = splitter_names[1],
		energy_required = 1,
		ingredients = {
			{"electronic-circuit", 5},
			{"iron-plate", 5},
			{"xmx-mk1-transport-belt", 2}
		}
	},
	createXmxMarksTransportBeltRecipes {
		name = splitter_names[5],
		energy_required = 3,
		category = "crafting-with-fluid",
		ingredients = {
			{"steel-plate", 5},
			{"processing-unit", 5},
			{splitter_names[4], 1},
			{type="fluid", name="lubricant", amount=80}
		}
	},
	createXmxMarksTransportBeltRecipes {
		name = splitter_names[6],
		energy_required = 3,
		category = "crafting-with-fluid",
		ingredients = {
			{"steel-plate", 5},
			{"processing-unit", 5},
			{splitter_names[5], 1},
			{type="fluid", name="lubricant", amount=80}
		}
	}
}

data:extend(transportBeltRecipes)
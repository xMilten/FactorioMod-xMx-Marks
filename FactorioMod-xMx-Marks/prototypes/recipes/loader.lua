local standard_loaders_crafting_speed = 2

-- Variable utils
local loader_names = {
	[1] = "xmx-mk1-loader",
	[2] = "xmx-mk2-loader",
	[3] = "xmx-mk3-loader",
	[4] = "xmx-mk4-loader",
	[5] = "xmx-mk5-loader",
	[6] = "xmx-mk6-loader"
}

-- RECIPES

function xmx_loader_recipe(data)
	local name = data.name or "loader-test"
	local category = data.category or nil
	local ingredients = data.ingredients or { {"wood", 1} }
	local energy_required = data.energy_required or standard_loaders_crafting_speed
	return {
		type = "recipe",
		name = name,
		category = category,
		ingredients = ingredients,
		enabled = false,
		energy_required = energy_required,
		result = name,
		mod = "xMx Marks"
	}
end

local recipes = {
	xmx_loader_recipe {
		name = loader_names[1],
		energy_required = 1,
		ingredients = {
			{"xmx-mk1-transport-belt", 1},
			{"iron-plate", 5},
			{"electronic-circuit", 5}
		}
	},
	xmx_loader_recipe {
		name = loader_names[2],
		energy_required = 1,
		ingredients = {
			{loader_names[1], 1},
			{"iron-plate", 5},
			{"electronic-circuit", 5}
		}
	},
	xmx_loader_recipe {
		name = loader_names[3],
		energy_required = 2,
		ingredients =  {
			{loader_names[2], 1},
			{"iron-gear-wheel", 5},
			{"advanced-circuit", 5}
		}
	},
	xmx_loader_recipe {
		name = loader_names[4],
		category = "crafting-with-fluid",
		energy_required = 2,
		ingredients = {
			{loader_names[3], 1},
			{"iron-gear-wheel", 5},
			{"advanced-circuit", 5},
			{type="fluid", name="lubricant", amount=80}
		}
	},
	xmx_loader_recipe {
		name = loader_names[5],
		category = "crafting-with-fluid",
		energy_required = 3,
		ingredients = {
			{loader_names[4], 1},
			{"steel-plate", 5},
			{"processing-unit", 5},
			{type="fluid", name="lubricant", amount=80}
		}
	},
	xmx_loader_recipe {
		name = loader_names[6],
		category = "crafting-with-fluid",
		energy_required = 3,
		ingredients = {
			{loader_names[5], 1},
			{"steel-plate", 5},
			{"processing-unit", 5},
			{type="fluid", name="lubricant", amount=80}
		}
	}
}
data:extend(recipes)
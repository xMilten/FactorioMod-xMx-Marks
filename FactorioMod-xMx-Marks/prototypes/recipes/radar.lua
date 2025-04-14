local radar_names = {
	[1] = "radar",
	[2] = "xmx-mk2-radar",
	[3] = "xmx-mk3-radar"
}

function createXmxMarksRadarRecipes(data)
	local name = data.name
	local ingredients = data.ingredients
	local result_count = data.result_count or 1
	
	return {
		type = "recipe",
		name = name,
        enabled = false,
		ingredients = ingredients,
		result = name,
		mod = "xMx Marks"
	}
end

local radarRecipes = {
	createXmxMarksRadarRecipes {
		name = radar_names[2],
		ingredients = {
			{"advanced-circuit", 2},
			{radar_names[1], 2}
		}
	},
	createXmxMarksRadarRecipes {
		name = radar_names[3],
		ingredients = {
			{"processing-unit", 2},
			{radar_names[2], 2}
		}
	}
}

data:extend(radarRecipes)
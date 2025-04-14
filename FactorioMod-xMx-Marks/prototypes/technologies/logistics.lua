local color = require(xmx_path .. "lib/markColors")

local logistics_names = {
	[1] = "xmx-mk1-logistics",
	[5] = "xmx-mk5-logistics",
	[6] = "xmx-mk6-logistics"
}

function effects_one()
	return {
		{
			type = "unlock-recipe",
			recipe = "xmx-mk1-splitter"
		},
		{
			type = "unlock-recipe",
			recipe = "xmx-mk1-underground-belt"
		}
	}
end

function effects_five()
	return {
		{
			type = "unlock-recipe",
			recipe = "xmx-mk5-transport-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "xmx-mk5-splitter"
		},
		{
			type = "unlock-recipe",
			recipe = "xmx-mk5-underground-belt"
		}
	}
end

function effects_six()
	return {
		{
			type = "unlock-recipe",
			recipe = "xmx-mk6-transport-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "xmx-mk6-splitter"
		},
		{
			type = "unlock-recipe",
			recipe = "xmx-mk6-underground-belt"
		}
	}
end

function unit_one()
	return {
		count = 20,
		ingredients = {{"automation-science-pack", 1}},
		time = 15
	}
end

function unit_five()
	return {
		count = 400,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1}
		},
		time = 15
	}
end

function unit_six()
	return {
		count = 500,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1}
		},
		time = 10
	}
end

function createXmxTiersLogisticsTechnologies(data)
	local name = data.name
	local tint = data.tint or {r=1.0, g=1.0, b=1.0}
	local effects = data.effects
	local prerequisites = data.prerequisites or nil
	local unit = data.unit
	
	return {
		type = "technology",
		name = name,
		icon_size = 256,
		icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/technology/logistics-1.png"
			},
			{
				icon = xmx_technologies_path .. "logistics-mask.png",
				tint = tint
			}
		},
		effects = effects,
		prerequisites = prerequisites,
		unit = unit,
		order = "a-f-a"
	}
end

local technologies = {
	createXmxTiersLogisticsTechnologies {
		name = logistics_names[1],
		tint = color.paint(1),
		effects = effects_one(),
		unit = unit_one()
	},
	createXmxTiersLogisticsTechnologies {
		name = logistics_names[5],
		tint = color.paint(5),
		effects = effects_five(),
		prerequisites = {"logistics-3", "utility-science-pack"},
		unit = unit_five()
	},
	createXmxTiersLogisticsTechnologies {
		name = logistics_names[6],
		tint = color.paint(6),
		effects = effects_six(),
		prerequisites = {"xmx-mk5-logistics", "space-science-pack"},
		unit = unit_six()
	}
}

data:extend(technologies)
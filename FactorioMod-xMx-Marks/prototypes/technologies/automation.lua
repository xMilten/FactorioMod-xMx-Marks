local color = require(xmx_path .. "lib/markColors")

local automation_names = {
	[2] = "xmx-mk2-automation",
	[4] = "xmx-mk4-automation",
	[6] = "xmx-mk6-automation"
}

function unit_two()
	return {
		count = 40,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1}
		},
		time = 15
	}
end

function unit_four()
	return {
		count = 150,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 45
	}
end

function unit_six()
	return {
		count = 450,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1}
		},
		time = 75
	}
end

function createXmxTiersLogisticsTechnologies(data)
	local mark = data.mark
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
				icon = "__base__/graphics/technology/automation-1.png"
			},
			{
				icon = xmx_technologies_path .. "automation-mask.png",
				tint = tint
			}
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "xmx-mk" .. mark .. "-assembling-machine"
			}
		},
		prerequisites = prerequisites,
		unit = unit,
		order = "a-f-a"
	}
end

local technologies = {
	createXmxTiersLogisticsTechnologies {
		mark = 2,
		name = automation_names[2],
		tint = color.paint(2),
		prerequisites = {"automation", "steel-processing", "logistic-science-pack"},
		unit = unit_two()
	},
	createXmxTiersLogisticsTechnologies {
		mark = 4,
		name = automation_names[4],
		tint = color.paint(4),
		prerequisites = {"automation-2", "speed-module", "production-science-pack"},
		unit = unit_four()
	},
	createXmxTiersLogisticsTechnologies {
		mark = 6,
		name = automation_names[6],
		tint = color.paint(6),
		prerequisites = {"automation-3", "speed-module-3", "space-science-pack"},
		unit = unit_six()
	}
}

data:extend(technologies)
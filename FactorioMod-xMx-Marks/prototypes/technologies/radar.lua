local color = require(xmx_path .. "lib/markColors")

local radar_names = {
    [1] = "radar",
	[2] = "xmx-mk2-radar",
	[3] = "xmx-mk3-radar"
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

function unit_three()
	return {
		count = 150,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 20
	}
end

function createXmxTiersRadarTechnologies(data)
	local mark = data.mark
	local name = data.name
	local tintHalf = data.tintHalf or {r=1.0, g=1.0, b=1.0, a=0.5}
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
				icon = xmx_technologies_path .. "radar.png",
				tint = tintHalf
			}
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "xmx-mk" .. mark .. "-radar"
			}
		},
		prerequisites = prerequisites,
		unit = unit,
		order = "a-d-b"
	}
end

local technologies = {
	createXmxTiersRadarTechnologies {
		mark = 2,
		name = radar_names[2],
		tintHalf = color.paint(12),
		prerequisites = {"advanced-electronics"},
		unit = unit_two()
	},
	createXmxTiersRadarTechnologies {
		mark = 3,
		name = radar_names[3],
		tintHalf = color.paint(13),
		prerequisites = {"advanced-electronics-2"},
		unit = unit_three()
	}
}

data:extend(technologies)
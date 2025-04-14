local color = require(xmx_path .. "lib/markColors")

local loader_names = {
	[1] = "xmx-mk1-loader",
	[2] = "xmx-mk2-loader",
	[3] = "xmx-mk3-loader",
	[4] = "xmx-mk4-loader",
	[5] = "xmx-mk5-loader",
	[6] = "xmx-mk6-loader"
}

function unit_one()
	return {
      count = 20,
      ingredients = {{"automation-science-pack", 1}},
      time = 15
	}
end

function unit_two()
	return {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 20
	}
end

function unit_three()
	return {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 20
	}
end

function unit_four()
	return {
        count = 300,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1}
        },
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

function createXmxTiersLoaderTechnologies(data)
    local mark = data.mark
    local name = data.name
    local tint = data.tint or {r=1.0, g=1.0, b=1.0}
	local prerequisites = data.prerequisites or nil
	local unit = data.unit

    return {
		type = "technology",
		name = name,
		icon_size = 256,
		icon_mipmaps = 4,
		icons = {
			{
				icon = xmx_technologies_path .. "loader.png"
			},
			{
				icon = xmx_technologies_path .. "loader-mask.png",
				tint = tint
			}
		},
		effects = {
            {
                type = "unlock-recipe",
                recipe = "xmx-mk" .. mark .. "-loader"
            }
        },
		prerequisites = prerequisites,
		unit = unit,
		order = "a-f-a"
    }
end

local technologies = {
	createXmxTiersLoaderTechnologies {
        mark = 1,
		name = loader_names[1],
		tint = color.paint(1),
		prerequisites = {"xmx-mk1-logistics"},
		unit = unit_one()
	},
	createXmxTiersLoaderTechnologies {
        mark = 2,
		name = loader_names[2],
		tint = color.paint(2),
		prerequisites = {"logistics"},
		unit = unit_two()
	},
	createXmxTiersLoaderTechnologies {
        mark = 3,
		name = loader_names[3],
		tint = color.paint(3),
		prerequisites = {"logistics-2"},
		unit = unit_three()
	},
	createXmxTiersLoaderTechnologies {
        mark = 4,
		name = loader_names[4],
		tint = color.paint(4),
		prerequisites = {"logistics-3"},
		unit = unit_four()
	},
	createXmxTiersLoaderTechnologies {
        mark = 5,
		name = loader_names[5],
		tint = color.paint(5),
		prerequisites = {"xmx-mk5-logistics"},
		unit = unit_five()
	},
	createXmxTiersLoaderTechnologies {
        mark = 6,
		name = loader_names[6],
		tint = color.paint(6),
		prerequisites = {"xmx-mk6-logistics"},
		unit = unit_six()
	}
}

data:extend(technologies)
local color = require(xmx_path .. "lib/markColors")

local radar_names = {
	[2] = "xmx-mk2-radar",
	[3] = "xmx-mk3-radar"
}

function createXmxMarksRadarsItems(data)
	local mark = data.mark
	local name = data.name
	local tintHalf = data.tintHalf or {r=1.0, g=1.0, b=1.0, a=0.5}

	return {
	    type = "item",
		name = name,
		icon_size = 64, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/radar.png",
                tint = tintHalf
			}
		},
		subgroup = "defensive-structure",
		order = "d[radar]-a[" .. name .. "]",
		place_result = name,
		stack_size = 50
	}
end

local items = {
	createXmxMarksRadarsItems {
		mark = 2,
		name = radar_names[2],
		tintHalf = color.paint(12),
	},
	createXmxMarksRadarsItems {
		mark = 3,
		name = radar_names[3],
		tintHalf = color.paint(13),
	}
}

data:extend(items)
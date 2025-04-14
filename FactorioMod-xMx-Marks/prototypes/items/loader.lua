local color = require(xmx_path .. "lib/markColors")

-- Variable utils
local loader_names = {
	[1] = "xmx-mk1-loader",
	[2] = "xmx-mk2-loader",
	[3] = "xmx-mk3-loader",
	[4] = "xmx-mk4-loader",
	[5] = "xmx-mk5-loader",
	[6] = "xmx-mk6-loader"
}

-- ITEMS

function xmx_loader_item(data)
	local name = data.name
	local icon_size = data.icon_size or 64
	local tint = data.tint
	
	return {
		type = "item",
		name = name,
		icon_size = icon_size,
		icons = {
			{
				icon = xmx_icons_entities_path .. "loaders/loader.png"
			},
			{
				icon = xmx_icons_entities_path .. "loaders/loader-mask.png",
				tint = tint
			}
		},		
		subgroup = "loader",
		order = "d[loader]-a["..name.."]",
		place_result = name,
		stack_size = 50
	}
end

local items = {
	xmx_loader_item	{
		name = loader_names[1],
		tint = color.paint(1)
	},
	xmx_loader_item	{
		name = loader_names[2],
		tint = color.paint(2)
	},
	xmx_loader_item	{
		name = loader_names[3],
		tint = color.paint(3)
	},
	xmx_loader_item	{
		name = loader_names[4],
		tint = color.paint(4)
	},
	xmx_loader_item	{
		name = loader_names[5],
		tint = color.paint(5)
	},
	xmx_loader_item	{
		name = loader_names[6],
		tint = color.paint(6)
	}
}
data:extend(items)
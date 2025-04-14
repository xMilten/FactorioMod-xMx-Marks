local color = require(xmx_lib .. "markColors")
local order_char = require(xmx_lib .. "helpers")

local transport_belt_names = {
	[1] = "xmx-mk1-transport-belt",
	[5] = "xmx-mk5-transport-belt",
	[6] = "xmx-mk6-transport-belt"
}
local underground_belt_names = {
	[1] = "xmx-mk1-underground-belt",
	[5] = "xmx-mk5-underground-belt",
	[6] = "xmx-mk6-underground-belt"
}
local splitter_names = {
	[1] = "xmx-mk1-splitter",
	[5] = "xmx-mk5-splitter",
	[6] = "xmx-mk6-splitter"
}

function createXmxTiersTransportBeltItems(data)
	local name = data.name
	local stack = data.stack or 50
	local item_type = data.item_type
	local order = data.order
	local order_char = data.order_char
	local transport_belt_tint = data.tint or {r=1.0, g=1.0, b=1.0}
	
	return {
		type = "item",
		name = name,
		stack_size = stack,
		icon_size = 64, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/" .. item_type .. ".png"
			},
			{
				icon = xmx_icons_entities_path .. "transport-belts/" .. item_type .. "-mask.png",
				tint = transport_belt_tint
			}
		},
		subgroup = item_type,
		order = order .. "[" .. item_type .. "]-" .. order_char .. "[" .. name .. "]",
		place_result = name
	}
end
--------------------------------------------------------------------------------------------------------------
-- Transport Belts
--------------------------------------------------------------------------------------------------------------
local items = {
	createXmxTiersTransportBeltItems {
		name = transport_belt_names[1],
		stack = 100,
		item_type = "transport-belt",
		order = "a",
		order_char = order_char.getChar(1),
		tint = color.paint(1)
	},
	createXmxTiersTransportBeltItems {
		name = transport_belt_names[5],
		stack = 100,
		item_type = "transport-belt",
		order = "a",
		order_char = order_char.getChar(5),
		tint = color.paint(5)
	},
	createXmxTiersTransportBeltItems {
		name = transport_belt_names[6],
		stack = 100,
		item_type = "transport-belt",
		order = "a",
		order_char = order_char.getChar(6),
		tint = color.paint(6)
	},
--------------------------------------------------------------------------------------------------------------
-- Underground Belts
--------------------------------------------------------------------------------------------------------------
	createXmxTiersTransportBeltItems {
		name = underground_belt_names[1],
		item_type = "underground-belt",
		order = "b",
		order_char = order_char.getChar(1),
		tint = color.paint(1)
	},
	createXmxTiersTransportBeltItems {
		name = underground_belt_names[5],
		item_type = "underground-belt",
		order = "b",
		order_char = order_char.getChar(5),
		tint = color.paint(5)
	},
	createXmxTiersTransportBeltItems {
		name = underground_belt_names[6],
		item_type = "underground-belt",
		order = "b",
		order_char = order_char.getChar(6),
		tint = color.paint(6)
	},
--------------------------------------------------------------------------------------------------------------
-- Splitter
--------------------------------------------------------------------------------------------------------------
	createXmxTiersTransportBeltItems {
		name = splitter_names[1],
		item_type = "splitter",
		order = "c",
		order_char = order_char.getChar(1),
		tint = color.paint(1)
	},
	createXmxTiersTransportBeltItems {
		name = splitter_names[5],
		item_type = "splitter",
		order = "c",
		order_char = order_char.getChar(5),
		tint = color.paint(5)
	},
	createXmxTiersTransportBeltItems {
		name = splitter_names[6],
		item_type = "splitter",
		order = "c",
		order_char = order_char.getChar(6),
		tint = color.paint(6)
	}
}

data:extend(items)
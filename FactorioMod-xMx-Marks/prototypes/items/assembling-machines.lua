local color = require(xmx_lib .. "markColors")
local order_char = require(xmx_lib .. "helpers")

local assembling_machine_names = {
	[1] = "assembling-machine-1",
	[2] = "xmx-mk2-assembling-machine",
	[3] = "assembling-machine-2",
	[4] = "xmx-mk4-assembling-machine",
	[5] = "assembling-machine-3",
	[6] = "xmx-mk6-assembling-machine"
}

function changeXmxMarksAssemblingMachineItems(data)
	local mark = data.mark
	local name = data.name
	local order_char = data.order_char
	local tint = data.tint

	return {
	    type = "item",
		name = name,
		icon_size = 64, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/assembling-machine-" .. mark ..".png"
			},
			{
				icon = xmx_icons_entities_path .. "assembling-machines/assembling-machine-" .. mark .."-mask.png",
				tint = tint
			},
			{
				icon = xmx_icons_entities_path .. "assembling-machines/assembling-machine-" .. mark .."-rust.png",
			}
		},
		subgroup = "production-machine",
		order = "a[assembling-machines]-" .. order_char .. "[" .. name .. "]",
		place_result = name,
		stack_size = 50
	}
end

local items = {
	changeXmxMarksAssemblingMachineItems {
		mark = 1,
		name = assembling_machine_names[2],
		order_char = order_char.getChar(2),
		tint = color.paint(2),
	},
	changeXmxMarksAssemblingMachineItems {
		mark = 2,
		name = assembling_machine_names[4],
		order_char = order_char.getChar(4),
		tint = color.paint(4),
	},
	changeXmxMarksAssemblingMachineItems {
		mark = 3,
		name = assembling_machine_names[6],
		order_char = order_char.getChar(6),
		tint = color.paint(6),
	}
}

data:extend(items)
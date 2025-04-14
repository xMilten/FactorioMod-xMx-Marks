local color = require(xmx_path .. "lib/markColors")

local transport_belt_remnant_names = {
	[1] = "xmx-mk1-transport-belt-remnant",
	[2] = "xmx-mk2-transport-belt-remnant",
	[3] = "xmx-mk3-transport-belt-remnant",
	[4] = "xmx-mk4-transport-belt-remnant",
	[5] = "xmx-mk5-transport-belt-remnant",
	[6] = "xmx-mk6-transport-belt-remnant"
}

function createXmxMarksTransportBeltsRemnant(data)
	local name = data.name
	local icon_size = data.icon_size or 64
	local tint = tint

	return {
		type = "corpse",
		name = name,
		icon_size = icon_size, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/transport-belt.png"
			},
			{
				icon = xmx_icons_entities_path .. "transport-belts/transport-belt-mask.png",
				tint = tint
			}
		},
		flags = flags,
		subgroup = "belt-remnants",
		order = "d[remnants]-a[generic]-a[small]",
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		tile_width = 1,
		tile_height = 1,
		selectable_in_game = false,
		time_before_removed = 60 * 60 * 15, -- 15 minutes
		final_render_layer = "remnants",
		remove_on_tile_placement = false,
		animation = make_rotated_animation_variations_from_sheet (8,{
			layers = {
				{
					filename = "__base__/graphics/entity/transport-belt/remnants/transport-belt-remnants.png",
					line_length = 1,
					width = 54,
					height = 52,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(1, 0),
					hr_version = {
						filename = "__base__/graphics/entity/transport-belt/remnants/hr-transport-belt-remnants.png",
						line_length = 1,
						width = 106,
						height = 102,
						frame_count = 1,
						variation_count = 1,
						axially_symmetrical = false,
						direction_count = 1,
						shift = util.by_pixel(1, -0.5),
						scale = 0.5,
					}
				},
				{
					filename = xmx_image_belts .. "transport-belt/remnants/transport-belt-remnants-mask.png",
					line_length = 1,
					width = 54,
					height = 52,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(1, 0),
					tint = tint,
					hr_version = {
						filename = xmx_image_belts .. "transport-belt/remnants/hr-transport-belt-remnants-mask.png",
						line_length = 1,
						width = 106,
						height = 102,
						frame_count = 1,
						variation_count = 1,
						axially_symmetrical = false,
						direction_count = 1,
						shift = util.by_pixel(1, -0.5),
						scale = 0.5,
						tint = tint
					}
				}
			}
		})
	}
end

local remnant = {
	createXmxMarksTransportBeltsRemnant {
		name = transport_belt_remnant_names[1],
		tint = color.paint(1)
	},
	createXmxMarksTransportBeltsRemnant {
		name = transport_belt_remnant_names[5],
		tint = color.paint(5)
	},
	createXmxMarksTransportBeltsRemnant {
		name = transport_belt_remnant_names[6],
		tint = color.paint(6)
	}
}
data:extend(remnant)
local color = require(xmx_path .. "lib/markColors")

local splitter_remnant_names = {
	[1] = "xmx-mk1-splitter-remnant",
	[2] = "xmx-mk2-splitter-remnant",
	[3] = "xmx-mk3-splitter-remnant",
	[4] = "xmx-mk4-splitter-remnant",
	[5] = "xmx-mk5-splitter-remnant",
	[6] = "xmx-mk6-splitter-remnant"
}

function createXmxMarksSplitterRemnant(data)
	local name = data.name
	local icon_size = data.icon_size or 64
	local tint = tint

	return {
		type = "corpse",
		name = name,
		icon_size = icon_size, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/splitter.png"
			},
			{
				icon = xmx_icons_entities_path .. "transport-belts/splitter-mask.png",
				tint = tint
			}
		},
		flags = flags,
		subgroup = "belt-remnants",
		order = "d[remnants]-a[generic]-a[small]",
		selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
		tile_width = 2,
		tile_height = 1,
		selectable_in_game = false,
		time_before_removed = 60 * 60 * 15, -- 15 minutes
		final_render_layer = "remnants",
		remove_on_tile_placement = false,
		animation = {
			layers = {
				{
					filename = "__base__/graphics/entity/splitter/remnants/splitter-remnants.png",
					line_length = 1,
					width = 96,
					height = 96,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 4,
					shift = util.by_pixel(4, 1.5),
					hr_version = {
						filename = "__base__/graphics/entity/splitter/remnants/hr-splitter-remnants.png",
						line_length = 1,
						width = 190,
						height = 190,
						frame_count = 1,
						variation_count = 1,
						axially_symmetrical = false,
						direction_count = 4,
						shift = util.by_pixel(3.5, 1.5),
						scale = 0.5
					}
				},
				{
					filename = xmx_image_belts .. "splitter/remnants/splitter-remnants-mask.png",
					line_length = 1,
					width = 96,
					height = 96,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 4,
					shift = util.by_pixel(4, 1.5),
					tint = tint,
					hr_version = {
						filename = xmx_image_belts .. "splitter/remnants/hr-splitter-remnants-mask.png",
						line_length = 1,
						width = 190,
						height = 190,
						frame_count = 1,
						variation_count = 1,
						axially_symmetrical = false,
						direction_count = 4,
						shift = util.by_pixel(3.5, 1.5),
						scale = 0.5,
						tint = tint
					}
				}
			}
		}
	}
end

local remnant = {
	createXmxMarksSplitterRemnant {
		name = splitter_remnant_names[1],
		tint = color.paint(1)
	},
	createXmxMarksSplitterRemnant {
		name = splitter_remnant_names[5],
		tint = color.paint(5)
	},
	createXmxMarksSplitterRemnant {
		name = splitter_remnant_names[6],
		tint = color.paint(6)
	}
}
data:extend(remnant)
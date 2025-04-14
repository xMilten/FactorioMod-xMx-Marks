local color = require(xmx_path .. "lib/markColors")

local underground_belt_remnant_names = {
	[1] = "xmx-mk1-underground-belt-remnant",
	[2] = "xmx-mk2-underground-belt-remnant",
	[3] = "xmx-mk3-underground-belt-remnant",
	[4] = "xmx-mk4-underground-belt-remnant",
	[5] = "xmx-mk5-underground-belt-remnant",
	[6] = "xmx-mk6-underground-belt-remnant"
}

function createXmxMarksUndergroundBeltsRemnant(data)
	local name = data.name
	local icon_size = data.icon_size or 64
	local tint = tint

	return {
		type = "corpse",
		name = name,
		icon_size = icon_size, icon_mipmaps = 4,
		icons = {
			{
				icon = "__base__/graphics/icons/underground-belt.png"
			},
			{
				icon = xmx_icons_entities_path .. "transport-belts/underground-belt-mask.png",
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
		animation = {
			layers = {
				{
					filename = "__base__/graphics/entity/underground-belt/remnants/underground-belt-remnants.png",
					line_length = 1,
					width = 78,
					height = 72,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 8,
					shift = util.by_pixel(10, 3),
					hr_version = {
						filename = "__base__/graphics/entity/underground-belt/remnants/hr-underground-belt-remnants.png",
						line_length = 1,
						width = 156,
						height = 144,
						frame_count = 1,
						variation_count = 1,
						axially_symmetrical = false,
						direction_count = 8,
						shift = util.by_pixel(10.5, 3),
						scale = 0.5
					}
				},
				{
					filename = xmx_image_belts .. "underground-belt/remnants/underground-belt-remnants-mask.png",
					line_length = 1,
					width = 78,
					height = 72,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 8,
					shift = util.by_pixel(10, 3),
					tint = tint,
					hr_version = {
						filename = xmx_image_belts .. "underground-belt/remnants/hr-underground-belt-remnants-mask.png",
						line_length = 1,
						width = 156,
						height = 144,
						frame_count = 1,
						variation_count = 1,
						axially_symmetrical = false,
						direction_count = 8,
						shift = util.by_pixel(10.5, 3),
						scale = 0.5,
						tint = tint
					}
				}
			}
		}
	}
end

local remnant = {
	createXmxMarksUndergroundBeltsRemnant {
		name = underground_belt_remnant_names[1],
		tint = color.paint(1)
	},
	createXmxMarksUndergroundBeltsRemnant {
		name = underground_belt_remnant_names[5],
		tint = color.paint(5)
	},
	createXmxMarksUndergroundBeltsRemnant {
		name = underground_belt_remnant_names[6],
		tint = color.paint(6)
	}
}
data:extend(remnant)
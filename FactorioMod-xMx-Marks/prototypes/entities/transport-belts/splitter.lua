local color = require(xmx_path .. "lib/markColors")

local splitter_names = {
	[1] = "xmx-mk1-splitter",
	[2] = "splitter",
	[3] = "fast-splitter",
	[4] = "express-splitter",
	[5] = "xmx-mk5-splitter",
	[6] = "xmx-mk6-splitter"
}

function createXmxMarksSplitter(data)
	local name = data.name
	local icon_size = data.icon_size or 64
	local health = data.health or 200
	local belt_animation_set = data.belt_animation_set
	local upgrade = data.upgrade or nil
	local speed = data.speed
	local tint = data.tint or {r=1.0, g=1.0, b=1.0}

	return {
		type = "splitter",
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
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = name},
		max_health = health,
		corpse = name .. "-remnant",
		resistances = {
			{
				type = "fire",
				percent = 60
			}
		},
		collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
		selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
		animation_speed_coefficient = 32,
		structure_animation_speed_coefficient = 1.2,
		structure_animation_movement_cooldown = 10,
		fast_replaceable_group = "transport-belt",
		next_upgrade = upgrade,
		speed = speed,
		belt_animation_set = belt_animation_set,
		working_sound = {
			sound = {
				{
					filename = "__base__/sound/splitters/splitter.ogg",
					volume = 0.2
				},
				{
					filename = "__base__/sound/splitters/splitter-2.ogg",
					volume = 0.2
				},
				{
					filename = "__base__/sound/splitters/splitter-3.ogg",
					volume = 0.2
				},
				{
					filename = "__base__/sound/splitters/splitter-4.ogg",
					volume = 0.2
				},
				{
					filename = "__base__/sound/splitters/splitter-5.ogg",
					volume = 0.2
				}
			},
			max_sounds_per_type = 3,
			audible_distance_modifier = 0.45
		},
		structure = {
			north = {
				layers = {
					{
						filename = "__base__/graphics/entity/splitter/splitter-north.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 82,
						height = 36,
						shift = util.by_pixel(6, 0),
						hr_version = {
							filename = "__base__/graphics/entity/splitter/hr-splitter-north.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 160,
							height = 70,
							shift = util.by_pixel(7, 0),
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "splitter/splitter-north-mask.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 82,
						height = 36,
						shift = util.by_pixel(6, 0),
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "splitter/hr-splitter-north-mask.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 160,
							height = 70,
							shift = util.by_pixel(7, 0),
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			east = {
				layers = {
					{
						filename = "__base__/graphics/entity/splitter/splitter-east.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 44,
						shift = util.by_pixel(4, 12),
						hr_version = {
							filename = "__base__/graphics/entity/splitter/hr-splitter-east.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 84,
							shift = util.by_pixel(4, 13),
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "splitter/splitter-east-mask.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 44,
						shift = util.by_pixel(4, 12),
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "splitter/hr-splitter-east-mask.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 84,
							shift = util.by_pixel(4, 13),
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			south = {
				layers = {
					{
						filename = "__base__/graphics/entity/splitter/splitter-south.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 82,
						height = 32,
						shift = util.by_pixel(4, 0),
						hr_version = {
							filename = "__base__/graphics/entity/splitter/hr-splitter-south.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 164,
							height = 64,
							shift = util.by_pixel(4, 0),
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "splitter/splitter-south-mask.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 82,
						height = 32,
						shift = util.by_pixel(4, 0),
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "splitter/hr-splitter-south-mask.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 164,
							height = 64,
							shift = util.by_pixel(4, 0),
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			west = {
				layers = {
					{
						filename = "__base__/graphics/entity/splitter/splitter-west.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 44,
						shift = util.by_pixel(6, 12),
						hr_version = {
							filename = "__base__/graphics/entity/splitter/hr-splitter-west.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 86,
							shift = util.by_pixel(6, 12),
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "splitter/splitter-west-mask.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 44,
						shift = util.by_pixel(6, 12),
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "splitter/hr-splitter-west-mask.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 86,
							shift = util.by_pixel(6, 12),
							scale = 0.5,
							tint = tint
						}
					}
				}
			}
		},
		structure_patch = {
			north = util.empty_sprite(),
			east = {
				layers = {
					{
						filename = "__base__/graphics/entity/splitter/splitter-east-top_patch.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 52,
						shift = util.by_pixel(4, -20),
						hr_version = {
							filename = "__base__/graphics/entity/splitter/hr-splitter-east-top_patch.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 104,
							shift = util.by_pixel(4, -20),
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "splitter/splitter-east-top_patch-mask.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 52,
						shift = util.by_pixel(4, -20),
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "splitter/hr-splitter-east-top_patch-mask.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 104,
							shift = util.by_pixel(4, -20),
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			south = util.empty_sprite(),
			west = {
				layers = {
					{
						filename = "__base__/graphics/entity/splitter/splitter-west-top_patch.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 48,
						shift = util.by_pixel(6, -18),
						hr_version = {
							filename = "__base__/graphics/entity/splitter/hr-splitter-west-top_patch.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 96,
							shift = util.by_pixel(6, -18),
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "splitter/splitter-west-top_patch-mask.png",
						frame_count = 32,
						line_length = 8,
						priority = "extra-high",
						width = 46,
						height = 48,
						shift = util.by_pixel(6, -18),
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "splitter/hr-splitter-west-top_patch-mask.png",
							frame_count = 32,
							line_length = 8,
							priority = "extra-high",
							width = 90,
							height = 96,
							shift = util.by_pixel(6, -18),
							scale = 0.5,
							tint = tint
						}
					}
				}
			}
		}
	}
end

local entities = {
	createXmxMarksSplitter {
		name = splitter_names[1],
		health = 170,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk1-transport-belt"].belt_animation_set,
		upgrade = splitter_names[2],
		speed = data.raw["transport-belt"]["xmx-mk1-transport-belt"].speed,
		tint = color.paint(1)
	},
	createXmxMarksSplitter {
		name = splitter_names[5],
		health = 210,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk5-transport-belt"].belt_animation_set,
		upgrade = splitter_names[6],
		speed =	data.raw["transport-belt"]["xmx-mk5-transport-belt"].speed,
		tint = color.paint(5)
	},
	createXmxMarksSplitter {
		name = splitter_names[6],
		health = 220,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk6-transport-belt"].belt_animation_set,
		speed =	data.raw["transport-belt"]["xmx-mk6-transport-belt"].speed,
		tint = color.paint(6)
	}
}
data:extend(entities)
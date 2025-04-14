local color = require(xmx_path .. "lib/markColors")

local underground_belt_names = {
	[1] = "xmx-mk1-underground-belt",
	[2] = "underground-belt",
	[3] = "fast-underground-belt",
	[4] = "express-underground-belt",
	[5] = "xmx-mk5-underground-belt",
	[6] = "xmx-mk6-underground-belt"
}

function createXmxMarksUndergroundBelts(data)
	local name = data.name
	local icon_size = data.icon_size or 64
	local health = data.health or 200
	local distance = data.distance
	local belt_animation_set = data.belt_animation_set
	local upgrade = data.upgrade or nil
	local speed = data.speed
	local tint = data.tint or {r=1.0, g=1.0, b=1.0}

	return {
		type = "underground-belt",
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
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = name},
		max_health = health,
		corpse = name .. "-remnant",
		max_distance = distance,
		working_sound = {
			sound =	{
				filename = "__base__/sound/underground-belt.ogg",
				volume = 0.27
			},
			max_sounds_per_type = 2,
			audible_distance_modifier = 0.5,
			persistent = true,
			use_doppler_shift = false
		},
		underground_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		underground_remove_belts_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines-remove.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		resistances = {
			{
				type = "fire",
				percent = 60
			},
			{
				type = "impact",
				percent = 30
			}
		},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		animation_speed_coefficient = 32,
		belt_animation_set = belt_animation_set,
		fast_replaceable_group = "transport-belt",
		next_upgrade = upgrade,
		speed = speed,
		structure = {
			direction_in = {
				sheets = {
					{
						filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						y = 96,
						hr_version = {
							filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
							priority = "extra-high",
							width = 192,
							height =192,
							y = 192,
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "underground-belt/underground-belt-structure-mask.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						y = 96,
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "underground-belt/hr-underground-belt-structure-mask.png",
							priority = "extra-high",
							width = 192,
							height =192,
							y = 192,
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			direction_out = {
				sheets = {
					{
						filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						hr_version = {
							filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
							priority = "extra-high",
							width = 192,
							height = 192,
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "underground-belt/underground-belt-structure-mask.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "underground-belt/hr-underground-belt-structure-mask.png",
							priority = "extra-high",
							width = 192,
							height = 192,
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			direction_in_side_loading = {
				sheets = {
					{
						filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						y = 96*3,
						hr_version = {
							filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
							priority = "extra-high",
							width = 192,
							height = 192,
							y = 192*3,
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "underground-belt/underground-belt-structure-mask.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						y = 96*3,
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "underground-belt/hr-underground-belt-structure-mask.png",
							priority = "extra-high",
							width = 192,
							height = 192,
							y = 192*3,
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			direction_out_side_loading = {
				sheets = {
					{
						filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						y = 96*2,
						hr_version = {
							filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
							priority = "extra-high",
							width = 192,
							height = 192,
							y= 192*2,
							scale = 0.5
						}
					},
					{
						filename = xmx_image_belts .. "underground-belt/underground-belt-structure-mask.png",
						priority = "extra-high",
						width = 96,
						height = 96,
						y = 96*2,
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "underground-belt/hr-underground-belt-structure-mask.png",
							priority = "extra-high",
							width = 192,
							height = 192,
							y= 192*2,
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
			back_patch = {
				sheet = {
					filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
					priority = "extra-high",
					width = 96,
					height = 96,
					hr_version = {
						filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
						priority = "extra-high",
						width = 192,
						height = 192,
						scale = 0.5
					}
				}
			},
			front_patch = {
				sheet = {
					filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
					priority = "extra-high",
					width = 96,
					height = 96,
					hr_version = {
						filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
						priority = "extra-high",
						width = 192,
						height = 192,
						scale = 0.5
					}
				}
			}
		}
	}
end

local entities = {
	createXmxMarksUndergroundBelts {
		name = underground_belt_names[1],
		health = 150,
		distance = 5,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk1-transport-belt"].belt_animation_set,
		upgrade = underground_belt_names[2],
		speed = data.raw["transport-belt"]["xmx-mk1-transport-belt"].speed,
		tint = color.paint(1)
	},
	createXmxMarksUndergroundBelts {
		name = underground_belt_names[5],
		health = 190,
		distance = 13,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk5-transport-belt"].belt_animation_set,
		upgrade = underground_belt_names[6],
		speed =	data.raw["transport-belt"]["xmx-mk5-transport-belt"].speed,
		tint = color.paint(5)
	},
	createXmxMarksUndergroundBelts {
		name = underground_belt_names[6],
		health = 200,
		distance = 15,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk6-transport-belt"].belt_animation_set,
		speed =	data.raw["transport-belt"]["xmx-mk6-transport-belt"].speed,
		tint = color.paint(6)
	}
}
data:extend(entities)
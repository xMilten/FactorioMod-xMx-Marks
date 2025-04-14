local color = require(xmx_path .. "lib/markColors")

local assembling_machine_names = {
	[1] = "xmx-mk2-assembling-machine",
	[2] = "xmx-mk4-assembling-machine",
	[3] = "xmx-mk6-assembling-machine"
}

function fluidBoxes()
	return {
		{
			production_type = "input",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, 2} }},
			secondary_draw_orders = { north = -1 }
		},
		{
			production_type = "output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, -2} }},
			secondary_draw_orders = { north = -1 }
		},
		off_when_no_fluid_recipe = true
	}
end

function shadows_one()
	return {		
		filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
		priority = "high",
		width = 95,
		height = 83,
		frame_count = 1,
		line_length = 1,
		repeat_count = 32,
		draw_as_shadow = true,
		shift = util.by_pixel(8.5, 5.5),
		hr_version = {
			filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
			priority = "high",
			width = 190,
			height = 165,
			frame_count = 1,
			line_length = 1,
			repeat_count = 32,
			draw_as_shadow = true,
			shift = util.by_pixel(8.5, 5),
			scale = 0.5
		}		
	}
end

function shadows_two()
	return {		
		filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
		priority = "high",
		width = 98,
		height = 82,
		frame_count = 32,
		line_length = 8,
		draw_as_shadow = true,
		shift = util.by_pixel(12, 5),
		hr_version = {
			filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
			priority = "high",
			width = 196,
			height = 163,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(12, 4.75),
			scale = 0.5
		}		
	}
end

function shadows_three()
	return {		
		filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
		priority = "high",
		width = 130,
		height = 82,
		frame_count = 32,
		line_length = 8,
		draw_as_shadow = true,
		shift = util.by_pixel(28, 4),
		hr_version = {
			filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
			priority = "high",
			width = 260,
			height = 162,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(28, 4),
			scale = 0.5
		}		
	}
end

local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

function createXmxMarksAssemblingMachines(data)
	local mark = data.mark
	local name = data.name
	local upgrade = data.upgrade or nil
	local fluids = data.fluids or nil
	local shadows = data.shadows or nil
	local crafting_categories = data.crafting_categories
	local tint = data.tint
	local health = data.health or 300
	local speed = data.speed
	local emissions = data.emissions
	local energy = data.energy
	local modules = data.modules

	return {
		type = "assembling-machine",
		name = name,
		icon_size = 64, icon_mipmaps = 4,
		icons = {
			{
				icon = xmx_icons_entities_path .. "assembling-machines/assembling-machine-" .. mark .. ".png"
			},
			{
				icon = xmx_icons_entities_path .. "assembling-machines/assembling-machine-" .. mark .. "-mask.png",
				tint = tint
			},
			{
				icon = xmx_icons_entities_path .. "assembling-machines/assembling-machine-" .. mark .. "-rust.png",
			}
		},
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.2, result = name},
		max_health = health,
		corpse = "assembling-machine-" .. mark .."-remnants",
		dying_explosion = "assembling-machine-" .. mark .."-explosion",
		alert_icon_shift = util.by_pixel(-3, -12),
		resistances = {
			{
				type = "fire",
				percent = 70
			}
		},
		fluid_boxes = fluids,
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		damaged_trigger_effect = hit_effects.entity(),
		fast_replaceable_group = "assembling-machine",
		next_upgrade = upgrade,
		animation =	{
			layers = {
				[1] = {
					filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/assembling-machine-" .. mark .. ".png",
					priority = "high",
					width = 83,
					height = 106,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, -8),
					hr_version = {
						filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/hr-assembling-machine-" .. mark .. ".png",
						priority = "high",
						width = 165,
						height = 212,
						frame_count = 32,
						line_length = 8,
						shift = util.by_pixel(0, -8),
						scale = 0.5
					}
				},
				[2] = {
					filename = xmx_image_assembling .. "assembling-machine-mask.png",
					priority = "high",
					width = 83,
					height = 106,
					frame_count = 1,
					repeat_count = 32,
					shift = util.by_pixel(0, -8),
					tint = tint,
					hr_version = {
						filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/hr-assembling-machine-" .. mark .. "-mask.png",
						priority = "high",
						width = 165,
						height = 212,
						frame_count = 1,
						repeat_count = 32,
						shift = util.by_pixel(0, -8),
						scale = 0.5,
						tint = tint
					}
				},
				[3] = {
					filename = xmx_image_assembling .. "assembling-machine-rust.png",
					priority = "high",
					width = 83,
					height = 106,
					frame_count = 1,
					repeat_count = 32,
					shift = util.by_pixel(0, -8),
					hr_version = {
						filename = xmx_image_assembling .. "assembling-machine-" .. mark .. "/hr-assembling-machine-" .. mark .. "-rust.png",
						priority = "high",
						width = 165,
						height = 212,
						frame_count = 1,
						repeat_count = 32,
						shift = util.by_pixel(0, -8),
						scale = 0.5
					}
				},
				[4] = shadows
			}
		},
		open_sound = sounds.machine_open,
		close_sound = sounds.machine_close,
		vehicle_impact_sound = sounds.generic_impact,
		working_sound = {
			sound = {
				{
					filename = "__base__/sound/assembling-machine-t" .. mark .."-1.ogg",
					volume = 0.45
				}
			},
			audible_distance_modifier = 0.5,
			fade_in_ticks = 4,
			fade_out_ticks = 20
		},		
		crafting_categories = crafting_categories,
		crafting_speed = speed,
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = emissions
		},
		energy_usage = energy,
		module_specification = {
			module_slots = modules
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"}
	}
end

local entities = {
	createXmxMarksAssemblingMachines {
		mark = 1,
		name = assembling_machine_names[1],
		upgrade = "assembling-machine-2",
		shadows = shadows_one(),
		crafting_categories = {"crafting", "basic-crafting", "advanced-crafting"},
		tint = color.paint(2),
		health = 325,
		speed = 0.75,
		emissions = 4,
		energy = "150kW",
		modules = 1
	},
	createXmxMarksAssemblingMachines {
		mark = 2,
		name = assembling_machine_names[2],
		upgrade = "assembling-machine-3",
		fluids = fluidBoxes(),
		shadows = shadows_two(),
		crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid"},
		tint = color.paint(4),
		health = 375,
		speed = 1.25,
		emissions = 2,
		energy = "300kW",
		modules = 3
	},
	createXmxMarksAssemblingMachines {
		mark = 3,
		name = assembling_machine_names[3],
		fluids = fluidBoxes(),
		shadows = shadows_three(),
		crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid"},
		tint = color.paint(6),
		health = 425,
		speed = 1.75,
		emissions = 0,
		energy = "450kW",
		modules = 5
	}
}

data:extend(entities)
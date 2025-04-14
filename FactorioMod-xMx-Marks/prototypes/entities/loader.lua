local color = require(xmx_path .. "lib/markColors")

local loader_names = {
	[1] = "xmx-mk1-loader",
	[2] = "xmx-mk2-loader",
	[3] = "xmx-mk3-loader",
	[4] = "xmx-mk4-loader",
	[5] = "xmx-mk5-loader",
	[6] = "xmx-mk6-loader"
}

function createXmxMarksLoader(data)
	local name = data.name
	local speed = data.speed
	local icon_size = data.icon_size or 64
	local belt_animation_set = data.belt_animation_set
	local order = data.order
	local upgrade = data.upgrade or nil
	local tint = data.tint or {r=1.0, g=1.0, b=1.0}
	local rust_layer_direction_in, rust_layer_direction_out = nil, nil
	
	if data.apply_rust ~= false then
		rust_layer_direction_in = {
			filename = xmx_image_entities_path .. "loader/xmx-loader-rust.png",
			priority = "extra-high",
			shift = {0.15625, 0.0703125},
			width = 53,
			height = 43,
			y = 43,
			hr_version = {
				filename = xmx_image_entities_path .. "loader/hr-xmx-loader-rust.png",
				priority = "extra-high",
				shift = {0.15625, 0.0703125},
				width = 106,
				height = 85,
				y = 85,
				scale = 0.5
			}
		}
		
		rust_layer_direction_out = {
			filename = xmx_image_entities_path .. "loader/xmx-loader-rust.png",
			priority = "extra-high",
			shift = {0.15625, 0.0703125},
			width = 53,
			height = 43,
			hr_version = {
				filename = xmx_image_entities_path .. "loader/hr-xmx-loader-rust.png",
				priority = "extra-high",
				shift = {0.15625, 0.0703125},
				width = 106,
				height = 85,
				scale = 0.5
			}
		}
	end

	return {
		type = "loader-1x1",
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
		flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
		minable = {mining_time = 0.25, result = name},
		max_health = 300,
		filter_count = 5,
		corpse = "small-remnants",
		resistances = {
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.4, -0.45}, {0.4, 0.45}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.4, -0.4}, {0.4, 0.4}},
		animation_speed_coefficient = 32,
		container_distance = 0.75, --Default: 1.5
		-- belt_distance = 0.0, --Default1x1: 0.0  --Default2x1: 0.5 
		belt_length = 0.20, -- Default: 0.5
		structure_render_layer = "object",
		-- structure_render_layer = "transport-belt-circuit-connector", --Default:"lower-object" 
		belt_animation_set = belt_animation_set,
		fast_replaceable_group = "transport-belt",
		next_upgrade = upgrade,
		speed = speed,
		structure = {
			direction_in = {
				sheets = {
					{
						filename = xmx_image_entities_path .. "loader/xmx-loader.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						y = 43,
						hr_version = {
							filename = xmx_image_entities_path .. "loader/hr-xmx-loader.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							y = 85,
							scale = 0.5
						}
					},
					{
						filename = xmx_image_entities_path .. "loader/xmx-loader-mask.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						y = 43,
						tint = tint,
						hr_version = {
							filename = xmx_image_entities_path .. "loader/hr-xmx-loader-mask.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							y = 85,
							scale = 0.5,
							tint = tint
						}
					},
					rust_layer_direction_in
				}
			},
			direction_out = {
				sheets =  {
					{
						filename = xmx_image_entities_path .. "loader/xmx-loader.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						hr_version = {
							filename = xmx_image_entities_path .. "loader/hr-xmx-loader.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							scale = 0.5
						}
					},
					{
						filename = xmx_image_entities_path .. "loader/xmx-loader-mask.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						tint = tint,
						hr_version = {
							filename = xmx_image_entities_path .. "loader/hr-xmx-loader-mask.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							scale = 0.5,
							tint = tint
						}
					},
					rust_layer_direction_out
				}
			}
		},
		order = order		
	}
end

local entities =  {
	createXmxMarksLoader {
		name = loader_names[1],
		speed = data.raw["transport-belt"]["xmx-mk1-transport-belt"].speed,
		upgrade = loader_names[2],
		belt_animation_set = data.raw["transport-belt"]["xmx-mk1-transport-belt"].belt_animation_set,
		tint = color.paint(1)
	},
	createXmxMarksLoader {
		name = loader_names[2],
		speed = data.raw["transport-belt"]["transport-belt"].speed,
		upgrade = loader_names[3],
		belt_animation_set = data.raw["transport-belt"]["transport-belt"].belt_animation_set,
		tint = color.paint(2)
	},
	createXmxMarksLoader {
		name = loader_names[3],
		speed =	data.raw["transport-belt"]["fast-transport-belt"].speed,
		upgrade = loader_names[4],
		belt_animation_set = data.raw["transport-belt"]["fast-transport-belt"].belt_animation_set,
		tint = color.paint(3)
	},
	createXmxMarksLoader {
		name = loader_names[4], 
		speed =	data.raw["transport-belt"]["express-transport-belt"].speed,
		upgrade = loader_names[5],
		belt_animation_set = data.raw["transport-belt"]["express-transport-belt"].belt_animation_set,
		tint = color.paint(4)
	},
	createXmxMarksLoader {
		name = loader_names[5],
		upgrade = loader_names[6],
		speed =	data.raw["transport-belt"]["xmx-mk5-transport-belt"].speed,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk5-transport-belt"].belt_animation_set,
		tint = color.paint(5)
	},
	createXmxMarksLoader {
		name = loader_names[6],			
		speed =	data.raw["transport-belt"]["xmx-mk6-transport-belt"].speed,
		belt_animation_set = data.raw["transport-belt"]["xmx-mk6-transport-belt"].belt_animation_set,
		tint = color.paint(6)
	}
}
data:extend(entities)
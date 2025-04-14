local color = require(xmx_path .. "lib/markColors")

local transport_belt_names = {
	[1] = "xmx-mk1-transport-belt",
	[2] = "transport-belt",
	[3] = "fast-transport-belt",
	[4] = "express-transport-belt",
	[5] = "xmx-mk5-transport-belt",
	[6] = "xmx-mk6-transport-belt"
}

function createXmxMarksTransportBelts(data)
	local name = data.name
	local icon_size = data.icon_size or 64
	local health = data.health or 200
	local upgrade = data.upgrade or nil
	local mark = data.mark
	local speed = data.speed
	local tint = data.tint or {r=1.0, g=1.0, b=1.0}

	return {
		type = "transport-belt",
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
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.2, result = name},
		max_health = health,
		corpse = name .. "-remnant",
		resistances = {
			{
				type = "fire",
				percent = 50
			}
		},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		working_sound = {
			sound =	{
				filename = "__base__/sound/transport-belt.ogg",
				volume = 0.4
			},
			persistent = true
		},
		animation_speed_coefficient = 32,
		belt_animation_set = {
			animation_set =	{
				layers = {
					{
						filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
						priority = "extra-high",
						width = 64,
						height = 64,
						frame_count = 32,
						direction_count = 20,
						hr_version = {
							filename = "__base__/graphics/entity/fast-transport-belt/hr-fast-transport-belt.png",
							priority = "extra-high",
							width = 128,
							height = 128,
							frame_count = 32,
							direction_count = 20,
							scale = 0.5
						
						}
					},
					{
						filename = xmx_image_belts .. "transport-belt/transport-belt-mask.png",
						priority = "extra-high",
						width = 64,
						height = 64,
						frame_count = 32,
						direction_count = 20,
						tint = tint,
						hr_version = {
							filename = xmx_image_belts .. "transport-belt/hr-transport-belt-mask.png",
							priority = "extra-high",
							width = 128,
							height = 128,
							frame_count = 32,
							direction_count = 20,
							scale = 0.5,
							tint = tint
						}
					}
				}
			},
		},
		fast_replaceable_group = "transport-belt",
		related_underground_belt = "xmx-mk" .. mark .. "-underground-belt",
		next_upgrade = upgrade,
		speed = speed,
		connector_frame_sprites = transport_belt_connector_frame_sprites,
		circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
		circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
		circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
	}
end

local entities = {
	createXmxMarksTransportBelts {
		name = transport_belt_names[1],
		health = 150,
		upgrade = transport_belt_names[2],
		mark = 1,
		speed = 0.03125,
		tint = color.paint(1)
	},
	createXmxMarksTransportBelts {
		name = transport_belt_names[5],
		health = 190,
		upgrade = transport_belt_names[6],
		mark = 5,
		speed =	0.15625,
		tint = color.paint(5)
	},
	createXmxMarksTransportBelts {
		name = transport_belt_names[6],
		health = 200,
		mark = 6,
		speed =	0.1875,
		tint = color.paint(6)
	}
}
data:extend(entities)
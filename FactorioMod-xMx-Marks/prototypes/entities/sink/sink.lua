local pipecovers = require ("__base__/prototypes/entity/pipecovers")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
    {
        type = "furnace",
        name = "xmx-sink",
        icon = xmx_icons_entities_path .. "sink.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "xmx-sink"},
        max_health = 167,
        energy_usage = {},
        corpse = "xmx-sink-remnants",
        dying_explosion = "storage-tank-explosion",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_boxes = {
            {
                base_area = 250,
                pipe_covers = pipecoverspictures(),
                pipe_connections = {{ type="input", position = {0.5, 1.5} }},
                hide_connection_info = true
            },
			off_when_no_fluid_recipe = false
        },
        pictures = {
            picture = {
                sheets = {
                {
                    filename = xmx_image_entities_path .. "sink/sink.png",
                    priority = "extra-high",
                    frames = 1,
                    width = 72,
                    height = 72,
                    shift = util.by_pixel(0, 4),
                    hr_version = {
                        filename = xmx_image_entities_path .. "sink/sink.png",
                        priority = "extra-high",
                        frames = 1,
                        width = 72,
                        height = 72,
                        shift = util.by_pixel(-0.25, 3.75),
                        scale = 0.5
                    }
                }
                }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = {
            sound = {
                filename = "__base__/sound/storage-tank.ogg",
                volume = 0.6
            },
            match_volume_to_activity = true,
            audible_distance_modifier = 0.5,
            max_sounds_per_type = 3
        },

        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
        circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        water_reflection = {
            pictures = {
                filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
                priority = "extra-high",
                width = 24,
                height = 24,
                shift = util.by_pixel(5, 35),
                variation_count = 1,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = false
        },
		crafting_categories = {"fuel-burning"},
		crafting_speed = 1.0,
		source_inventory_size = 1,
		result_inventory_size = 1,
		module_specification = { module_slots = 1 },
		allowed_effects = {"speed", "consumption"},
    }
})
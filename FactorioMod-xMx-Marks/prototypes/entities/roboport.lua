local color = require(xmx_path .. "lib/markColors")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({{
    type = "roboport",
    name = "xmx-mk2-roboport",
    icons = {
        {
            icon = "__base__/graphics/icons/roboport.png",
            tint = color.paint(12)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "xmx-mk2-roboport"},
    max_health = 1000,
    corpse = "roboport-remnants",
    dying_explosion = "roboport-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    damaged_trigger_effect = hit_effects.entity(),
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
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "20MW",
        buffer_capacity = "200MJ"
    },
    recharge_minimum = "80MJ",
    energy_usage = "100kW",
    -- per one charge slot
    charging_energy = "1500kW",
    logistics_radius = 50,
    construction_radius = 110,
    charge_approach_distance = 5,
    robot_slots_count = 20,
    material_slots_count = 20,
    fast_replaceable_group = "roboport",
    stationing_offset = {0, 0},
    charging_offsets = {
        {-1.5, -0.5}, {0, -0.5}, {1.5, -0.5}, {1.5, 0.5}, {1.5, 1.5}, {0, 1.5}, {-1.5, 1.5}, {-1.5, 0.5}
    },
    base = {
        layers = {
            {
                filename = "__base__/graphics/entity/roboport/roboport-base.png",
                width = 143,
                height = 135,
                shift = {0.5, 0.25},
                tint = color.paint(12),
                hr_version = {
                    filename = "__base__/graphics/entity/roboport/hr-roboport-base.png",
                    width = 228,
                    height = 277,
                    shift = util.by_pixel(2, 7.75),
                    scale = 0.5,
                    tint = color.paint(12)
                }
            },
            {
                filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
                width = 147,
                height = 101,
                draw_as_shadow = true,
                shift = util.by_pixel(28.5, 19.25),
                hr_version = {
                    filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
                    width = 294,
                    height = 201,
                    draw_as_shadow = true,
                    force_hr_shadow = true,
                    shift = util.by_pixel(28.5, 19.25),
                    scale = 0.5
                }
            }
        }
    },
    base_patch = {
        filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
        priority = "medium",
        width = 69,
        height = 50,
        frame_count = 1,
        shift = {0.03125, 0.203125},
        hr_version = {
            filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
            priority = "medium",
            width = 138,
            height = 100,
            frame_count = 1,
            shift = util.by_pixel(1.5, 5),
            scale = 0.5
        }
    },
    base_animation = {
        filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
        priority = "medium",
        width = 42,
        height = 31,
        frame_count = 8,
        animation_speed = 0.5,
        shift = {-0.5315, -1.9375},
        hr_version = {
            filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
            priority = "medium",
            width = 83,
            height = 59,
            frame_count = 8,
            animation_speed = 0.5,
            shift = util.by_pixel(-17.75, -61.25),
            scale = 0.5
        }
    },
    door_animation_up = {
        filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
        priority = "medium",
        width = 52,
        height = 20,
        frame_count = 16,
        shift = {0.015625, -0.890625},
        hr_version = {
            filename = "__base__/graphics/entity/roboport/hr-roboport-door-up.png",
            priority = "medium",
            width = 97,
            height = 38,
            frame_count = 16,
            shift = util.by_pixel(-0.25, -29.5),
            scale = 0.5
        }
    },
    door_animation_down = {
        filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
        priority = "medium",
        width = 52,
        height = 22,
        frame_count = 16,
        shift = {0.015625, -0.234375},
        hr_version = {
            filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
            priority = "medium",
            width = 97,
            height = 41,
            frame_count = 16,
            shift = util.by_pixel(-0.25,-9.75),
            scale = 0.5
        }
    },
    recharging_animation = {
        filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
        draw_as_glow = true,
        priority = "high",
        width = 37,
        height = 35,
        frame_count = 16,
        scale = 1.5,
        animation_speed = 0.5,
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
        sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.4 },
        max_sounds_per_type = 3,
        audible_distance_modifier = 0.75,
        --probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.2, size = 3, color = {r = 0.5, g = 0.5, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,

    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,

    open_door_trigger_effect = sounds.roboport_door_open,
    close_door_trigger_effect = sounds.roboport_door_close,

    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},

    water_reflection = {
        pictures = {
            filename = "__base__/graphics/entity/roboport/roboport-reflection.png",
            priority = "extra-high",
            width = 28,
            height = 28,
            shift = util.by_pixel(0, 75),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
    }
}
})
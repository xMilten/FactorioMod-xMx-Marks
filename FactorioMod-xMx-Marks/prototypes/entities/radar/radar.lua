local color = require(xmx_path .. "lib/markColors")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local radar_names = {
	[2] = "xmx-mk2-radar",
	[3] = "xmx-mk3-radar"
}

function createXmxMarksRadars(data)
    local name = data.name
    local health = data.health
    local next_upgrade = data.next_upgrade or nil
    local energy_per_sector = data.energy_per_sector
    local max_distance_of_sector_revealed = data.max_distance_of_sector_revealed
    local max_distance_of_nearby_sector_revealed = data.max_distance_of_nearby_sector_revealed
    local energy_per_nearby_scan = data.energy_per_nearby_scan
    local energy_usage = data.energy_usage
    local tintHalf = data.tintHalf or {r=1.0, g=1.0, b=1.0, a=0.5}

    return {
        type = "radar",
        name = name,
        icons = {
            {
                icon = "__base__/graphics/icons/radar.png",
                tint = tintHalf
            }
        },
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = name},
        max_health = health,
		fast_replaceable_group = "radar",
		next_upgrade = next_upgrade,
        corpse = name .. "-remnants",
        dying_explosion = "radar-explosion",
        resistances = {
            {
                type = "fire",
                percent = 70
            },
            {
                type = "impact",
                percent = 30
            }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_per_sector = energy_per_sector,
        max_distance_of_sector_revealed = max_distance_of_sector_revealed,
        max_distance_of_nearby_sector_revealed = max_distance_of_nearby_sector_revealed,
        energy_per_nearby_scan = energy_per_nearby_scan,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_usage = energy_usage,
        integration_patch = {
            filename = "__base__/graphics/entity/radar/radar-integration.png",
            priority = "low",
            width = 119,
            height = 108,
            direction_count = 1,
            shift = util.by_pixel(1.5, 4),
            hr_version = {
                filename = "__base__/graphics/entity/radar/hr-radar-integration.png",
                priority = "low",
                width = 238,
                height = 216,
                direction_count = 1,
                shift = util.by_pixel(1.5, 4),
                scale = 0.5
            }
        },
        pictures = {
            layers = {
                {
                    filename = "__base__/graphics/entity/radar/radar.png",
                    priority = "low",
                    width = 98,
                    height = 128,
                    apply_projection = false,
                    direction_count = 64,
                    line_length = 8,
                    shift = util.by_pixel(1, -16),
                    tint = tintHalf,
                    hr_version = {
                        filename = "__base__/graphics/entity/radar/hr-radar.png",
                        priority = "low",
                        width = 196,
                        height = 254,
                        apply_projection = false,
                        direction_count = 64,
                        line_length = 8,
                        shift = util.by_pixel(1, -16),
                        scale = 0.5,
                        tint = tintHalf
                    }
                },
                {
                    filename = "__base__/graphics/entity/radar/radar-shadow.png",
                    priority = "low",
                    width = 172,
                    height = 94,
                    apply_projection = false,
                    direction_count = 64,
                    line_length = 8,
                    shift = util.by_pixel(39,3),
                    draw_as_shadow = true,
                    hr_version = {
                        filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
                        priority = "low",
                        width = 343,
                        height = 186,
                        apply_projection = false,
                        direction_count = 64,
                        line_length = 8,
                        shift = util.by_pixel(39.25,3),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        working_sound = {
            sound = {
                {
                filename = "__base__/sound/radar.ogg",
                volume = 0.8
                }
            },
            max_sounds_per_type = 3,
            --audible_distance_modifier = 0.8,
            use_doppler_shift = false
        },
        radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
        rotation_speed = 0.01,
        water_reflection = {
            pictures = {
                filename = "__base__/graphics/entity/radar/radar-reflection.png",
                priority = "extra-high",
                width = 28,
                height = 32,
                shift = util.by_pixel(5, 35),
                variation_count = 1,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = false
        }
    }
end

local entities = {
	createXmxMarksRadars {
		name = radar_names[2],
		next_upgrade = radar_names[3],
		tintHalf = color.paint(12),
		health = 300,
        energy_per_sector = "13MJ",
        max_distance_of_sector_revealed = 19,
        max_distance_of_nearby_sector_revealed = 4,
        energy_per_nearby_scan = "333kJ",
        energy_usage = "400kW"
	},
	createXmxMarksRadars {
		name = radar_names[3],
		tintHalf = color.paint(13),
		health = 350,
        energy_per_sector = "17MJ",
        max_distance_of_sector_revealed = 23,
        max_distance_of_nearby_sector_revealed = 5,
        energy_per_nearby_scan = "415kJ",
        energy_usage = "500kW"
	}
}

data:extend(entities)
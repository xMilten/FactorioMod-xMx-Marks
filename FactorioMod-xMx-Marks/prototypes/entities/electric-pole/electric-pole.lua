local color = require(xmx_path .. "lib/markColors")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({{
    type = "electric-pole",
    name = "xmx-mk2-medium-electric-pole",
    icons = {
        {
            icon = "__base__/graphics/icons/medium-electric-pole.png",
            tint = color.paint(12)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "xmx-mk2-medium-electric-pole"},
    max_health = 200,
    corpse = "xmx-mk2-medium-electric-pole-remnants",
    dying_explosion = "medium-electric-pole-explosion",
    track_coverage_during_build_by_moving = true,
    fast_replaceable_group = "electric-pole",
    resistances = {
        {
            type = "fire",
            percent = 100
        }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = hit_effects.entity({{-0.2, -2.2},{0.2, 0.2}}),
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    maximum_wire_distance = 18,
    supply_area_distance = 7,
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.electric_network_open,
    close_sound = sounds.electric_network_close,
    pictures = {
        layers = {
            {
                filename = "__base__/graphics/entity/medium-electric-pole/medium-electric-pole.png",
                priority = "extra-high",
                width = 40,
                height = 124,
                direction_count = 4,
                shift = util.by_pixel(4, -44),
                tint = color.paint(12),
                hr_version = {
                    filename = "__base__/graphics/entity/medium-electric-pole/hr-medium-electric-pole.png",
                    priority = "extra-high",
                    width = 84,
                    height = 252,
                    direction_count = 4,
                    shift = util.by_pixel(3.5, -44),
                    scale = 0.5,
                    tint = color.paint(12)
                }
            },
            {
                filename = "__base__/graphics/entity/medium-electric-pole/medium-electric-pole-shadow.png",
                priority = "extra-high",
                width = 140,
                height = 32,
                direction_count = 4,
                shift = util.by_pixel(56, -1),
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/medium-electric-pole/hr-medium-electric-pole-shadow.png",
                    priority = "extra-high",
                    width = 280,
                    height = 64,
                    direction_count = 4,
                    shift = util.by_pixel(56.5, -1),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
    },
    connection_points = {
      {
        shadow = {
          copper = util.by_pixel_hr(229, -13),
          red = util.by_pixel_hr(246, -2),
          green = util.by_pixel_hr(201, -2)
        },
        wire = {
          copper = util.by_pixel_hr(15, -199),
          red = util.by_pixel_hr(43, -179),
          green = util.by_pixel_hr(-15, -185)
        }
      },
      {
        shadow = {
          copper = util.by_pixel_hr(229, -13),
          red = util.by_pixel_hr(230, 10),
          green = util.by_pixel_hr(196, -23)
        },
        wire = {
          copper = util.by_pixel_hr(15, -199),
          red = util.by_pixel_hr(27, -167),
          green = util.by_pixel_hr(-9, -200)
        }
      },
      {
        shadow = {
          copper = util.by_pixel_hr(229, -13),
          red = util.by_pixel_hr(208, 12),
          green = util.by_pixel_hr(217, -30)
        },
        wire = {
          copper = util.by_pixel_hr(15, -199),
          red = util.by_pixel_hr(5, -166),
          green = util.by_pixel_hr(13, -206)
        }
      },
      {
        shadow = {
          copper = util.by_pixel_hr(229, -13),
          red = util.by_pixel_hr(195, 1),
          green = util.by_pixel_hr(238, -23)
        },
        wire = {
          copper = util.by_pixel_hr(15, -199),
          red = util.by_pixel_hr(-12, -175),
          green = util.by_pixel_hr(36, -199)
        }
      }
    },
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        width = 12,
        height = 12,
        priority = "extra-high-no-scale"
    },
    water_reflection = {
        pictures = {
            filename = "__base__/graphics/entity/medium-electric-pole/medium-electric-pole-reflection.png",
            priority = "extra-high",
            width = 12,
            height = 28,
            shift = util.by_pixel(0, 55),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
    }
},
{
    type = "electric-pole",
    name = "xmx-mk2-big-electric-pole",
    icons = {
        {
            icon = "__base__/graphics/icons/big-electric-pole.png",
            tint = color.paint(12)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "xmx-mk2-big-electric-pole"},
    max_health = 300,
    corpse = "xmx-mk2-big-electric-pole-remnants",
    dying_explosion = "big-electric-pole-explosion",
    fast_replaceable_group = "electric-pole",
    resistances = {
        {
            type = "fire",
            percent = 100
        }
    },
    collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity({{-0.5, -2.5},{0.5, 0.5}}),
    drawing_box = {{-1, -3}, {1, 0.5}},
    maximum_wire_distance = 60,
    supply_area_distance = 4,
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.electric_network_open,
    close_sound = sounds.electric_network_close,
    pictures = {
        layers = {
            {
                filename = "__base__/graphics/entity/big-electric-pole/big-electric-pole.png",
                priority = "extra-high",
                width = 76,
                height = 156,
                direction_count = 4,
                shift = util.by_pixel(1, -51),
                tint = color.paint(12),
                hr_version = {
                    filename = "__base__/graphics/entity/big-electric-pole/hr-big-electric-pole.png",
                    priority = "extra-high",
                    width = 148,
                    height = 312,
                    direction_count = 4,
                    shift = util.by_pixel(0, -51),
                    scale = 0.5,
                    tint = color.paint(12)
                }
            },
            {
                filename = "__base__/graphics/entity/big-electric-pole/big-electric-pole-shadow.png",
                priority = "extra-high",
                width = 188,
                height = 48,
                direction_count = 4,
                shift = util.by_pixel(60, 0),
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/big-electric-pole/hr-big-electric-pole-shadow.png",
                    priority = "extra-high",
                    width = 374,
                    height = 94,
                    direction_count = 4,
                    shift = util.by_pixel(60, 0),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
    },
    connection_points = {
        {
            shadow = {
                copper = util.by_pixel_hr(245.0, -34.0),
                red = util.by_pixel_hr(301.0, -0.0),
                green = util.by_pixel_hr(206.0, -0.0)
            },
            wire = {
                copper = util.by_pixel_hr(0, -246.0),
                red = util.by_pixel_hr(58.0, -211.0),
                green = util.by_pixel_hr(-58.0, -211.0)
            }
        },
        {
            shadow = {
                copper = util.by_pixel_hr(279.0, -24.0),
                red = util.by_pixel_hr(284.0, 28.0),
                green = util.by_pixel_hr(204.0, -31.0)
            },
            wire = {
                copper = util.by_pixel_hr(34.0, -235.0),
                red = util.by_pixel_hr(41.0, -183.0),
                green = util.by_pixel_hr(-40.0, -240.0)
            }
        },
        {
            shadow = {
                copper = util.by_pixel_hr(292.0, 0.0),
                red = util.by_pixel_hr(244.0, 41.0),
                green = util.by_pixel_hr(244.0, -41.0)
            },
            wire = {
                copper = util.by_pixel_hr(47.0, -212.0),
                red = util.by_pixel_hr(1.0, -170.0),
                green = util.by_pixel_hr(1.0, -251.0)
            }
        },
        {
            shadow = {
                copper = util.by_pixel_hr(277.0, 23.0),
                red = util.by_pixel_hr(204.0, 30.0),
                green = util.by_pixel_hr(286.0, -29.0)
            },
            wire = {
                copper = util.by_pixel_hr(33.0, -188.0),
                red = util.by_pixel_hr(-41.0, -182.5),
                green = util.by_pixel_hr(41.0, -239.0)
            }
        }
    },
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        width = 12,
        height = 12,
        priority = "extra-high-no-scale"
    },
    water_reflection = {
        pictures = {
            filename = "__base__/graphics/entity/big-electric-pole/big-electric-pole-reflection.png",
            priority = "extra-high",
            width = 16,
            height = 32,
            shift = util.by_pixel(0, 60),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
    }
},
{
    type = "electric-pole",
    name = "xmx-mk2-substation",
    icons = {
        {
            icon = "__base__/graphics/icons/substation.png",
            tint = color.paint(12)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "xmx-mk2-substation"},
    max_health = 400,
    corpse = "xmx-mk2-substation-remnants",
    dying_explosion = "substation-explosion",
    track_coverage_during_build_by_moving = true,
    fast_replaceable_group = "electric-pole",
    resistances = {
        {
            type = "fire",
            percent = 90
        }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity({{-0.5, -2.5}, {0.5, 0.5}}),
    drawing_box = {{-1, -3}, {1, 1}},
    maximum_wire_distance = 36,
    supply_area_distance = 18,
    pictures = {
        layers = {
            {
                filename = "__base__/graphics/entity/substation/substation.png",
                priority = "high",
                width = 70,
                height = 136,
                direction_count = 4,
                shift = util.by_pixel(0, 1-32),
                tint = color.paint(12),
                hr_version = {
                    filename = "__base__/graphics/entity/substation/hr-substation.png",
                    priority = "high",
                    width = 138,
                    height = 270,
                    direction_count = 4,
                    shift = util.by_pixel(0, 1-32),
                    scale = 0.5,
                    tint = color.paint(12)
                }
            },
            {
                filename = "__base__/graphics/entity/substation/substation-shadow.png",
                priority = "high",
                width = 186,
                height = 52,
                direction_count = 4,
                shift = util.by_pixel(62, 42-32),
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/substation/hr-substation-shadow.png",
                    priority = "high",
                    width = 370,
                    height = 104,
                    direction_count = 4,
                    shift = util.by_pixel(62, 42-32),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.electric_network_open,
    close_sound = sounds.electric_network_close,
    working_sound = {
        sound = {
            filename = "__base__/sound/substation.ogg",
            volume = 0.4
        },
        max_sounds_per_type = 3,
        audible_distance_modifier = 0.32,
        fade_in_ticks = 30,
        fade_out_ticks = 40,
        use_doppler_shift = false
    },
    connection_points = {
        {
            shadow = {
                copper = util.by_pixel(136, 8),
                green = util.by_pixel(124, 8),
                red = util.by_pixel(151, 9)
            },
            wire = {
                copper = util.by_pixel(0, -86),
                green = util.by_pixel(-21, -82),
                red = util.by_pixel(22, -81)
            }
        },
        {
            shadow = {
                copper = util.by_pixel(133, 9),
                green = util.by_pixel(144, 21),
                red = util.by_pixel(110, -3)
            },
            wire = {
                copper = util.by_pixel(0, -85),
                green = util.by_pixel(15, -70),
                red = util.by_pixel(-15, -92)
            }
        },
        {
            shadow = {
                copper = util.by_pixel(133, 9),
                green = util.by_pixel(127, 26),
                red = util.by_pixel(127, -8)
            },
            wire = {
                copper = util.by_pixel(0, -85),
                green = util.by_pixel(0, -66),
                red = util.by_pixel(0, -97)
            }
        },
        {
            shadow = {
                copper = util.by_pixel(133, 9),
                green = util.by_pixel(111, 20),
                red = util.by_pixel(144, -3)
            },
            wire = {
                copper = util.by_pixel(0, -86),
                green = util.by_pixel(-15, -71),
                red = util.by_pixel(15, -92)
            }
        }
    },
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        width = 12,
        height = 12,
        priority = "extra-high-no-scale"
    },
    water_reflection = {
        pictures = {
            filename = "__base__/graphics/entity/substation/substation-reflection.png",
            priority = "extra-high",
            width = 20,
            height = 28,
            shift = util.by_pixel(0, 55),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
    }
}
})
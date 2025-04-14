local color = require(xmx_path .. "lib/markColors")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({{
    type = "lamp",
    name = "xmx-mk2-small-lamp",
    icons = {
      {
        icon = "__base__/graphics/icons/small-lamp.png",
      },
      {
        icon = xmx_icons_entities_path .. "small-lamp.png",
        tint = color.paint(3)
      }
	  },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "small-lamp"},
    max_health = 200,
    corpse = "xmx-mk2-lamp-remnants",
		fast_replaceable_group = "lamp",
    dying_explosion = "lamp-explosion",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    energy_source =
    {
      type = "electric",
      usage_priority = "lamp"
    },
    energy_usage_per_tick = "20KW",
    darkness_for_all_lamps_on = 0.5,
    darkness_for_all_lamps_off = 0.3,
    light = {intensity = 0.9, size = 80, color = {r=1.0, g=1.0, b=0.75}},
    light_when_colored = {intensity = 0, size = 6, color = {r=1.0, g=1.0, b=0.75}},
    glow_size = 24,
    glow_color_intensity = 1,
    glow_render_mode = "multiplicative",
    picture_off =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/small-lamp/lamp.png",
          priority = "high",
          width = 42,
          height = 36,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(0,3),
          hr_version =
          {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp.png",
            priority = "high",
            width = 83,
            height = 70,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(0.25,3),
            scale = 0.5
          }
        },
        {
          filename = xmx_image_lamp .. "lamp.png",
          priority = "high",
          width = 42,
          height = 36,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(0,3),
		      tint = color.paint(3),
          hr_version =
          {
            filename = xmx_image_lamp .. "hr-lamp.png",
            priority = "high",
            width = 83,
            height = 70,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(0.25,3),
            scale = 0.5,
			      tint = color.paint(3)
          }
        },
        {
          filename = "__base__/graphics/entity/small-lamp/lamp-shadow.png",
          priority = "high",
          width = 38,
          height = 24,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(4,5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp-shadow.png",
            priority = "high",
            width = 76,
            height = 47,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(4, 4.75),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    picture_on =
    {
      filename = "__base__/graphics/entity/small-lamp/lamp-light.png",
      priority = "high",
      width = 46,
      height = 40,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(0, -7),
      hr_version =
      {
        filename = "__base__/graphics/entity/small-lamp/hr-lamp-light.png",
        priority = "high",
        width = 90,
        height = 78,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(0, -7),
        scale = 0.5
      }
    },
    signal_to_color_mapping =
    {
      {type = "virtual", name = "signal-red",    color = {r = 1, g = 0, b = 0}},
      {type = "virtual", name = "signal-green",  color = {r = 0, g = 1, b = 0}},
      {type = "virtual", name = "signal-blue",   color = {r = 0, g = 0, b = 1}},
      {type = "virtual", name = "signal-yellow", color = {r = 1, g = 1, b = 0}},
      {type = "virtual", name = "signal-pink",   color = {r = 1, g = 0, b = 1}},
      {type = "virtual", name = "signal-cyan",   color = {r = 0, g = 1, b = 1}},
      {type = "virtual", name = "signal-white",  color = {r = 1, g = 1, b = 1}}
    },

    circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
    circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
}
})
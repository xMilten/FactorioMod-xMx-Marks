local color = require(xmx_path .. "lib/markColors")

data:extend({{
    type = "corpse",
    name = "xmx-mk2-medium-electric-pole-remnants",
    icon = "__base__/graphics/icons/medium-electric-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "energy-pipe-distribution-remnants",
    order = "a-b-a",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation_overlay_final_render_layer = "object",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(3,
  {
    layers = {
      {
        filename = "__base__/graphics/entity/medium-electric-pole/remnants/medium-electric-pole-base-remnants.png",
        line_length = 1,
        width = 142,
        height = 70,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(35, -5),
        tint = color.paint(12),
        hr_version = {
          filename = "__base__/graphics/entity/medium-electric-pole/remnants/hr-medium-electric-pole-base-remnants.png",
          line_length = 1,
          width = 284,
          height = 140,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(35, -5),
          scale = 0.5,
          tint = color.paint(12)
        }
      }
    }
  }),

  animation_overlay = make_rotated_animation_variations_from_sheet(3,
  {
    layers = {
      {
        filename = "__base__/graphics/entity/medium-electric-pole/remnants/medium-electric-pole-top-remnants.png",
        line_length = 1,
        width = 50,
        height = 92,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0 , -39),
        tint = color.paint(12),
        hr_version = {
          filename = "__base__/graphics/entity/medium-electric-pole/remnants/hr-medium-electric-pole-top-remnants.png",
          line_length = 1,
          width = 100,
          height = 184,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -38.5),
          scale = 0.5,
          tint = color.paint(12)
        }
      }
    }
  })
},
{
    type = "corpse",
    name = "xmx-mk2-big-electric-pole-remnants",
    icon = "__base__/graphics/icons/big-electric-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "energy-pipe-distribution-remnants",
    order = "a-c-a",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation_overlay_final_render_layer = "object",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (4,
  {
    layers = {
      {
        filename = "__base__/graphics/entity/big-electric-pole/remnants/big-electric-pole-base-remnants.png",
        line_length = 1,
        width = 184,
        height = 94,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(44, 0),
        tint = color.paint(12),
        hr_version = {
          filename = "__base__/graphics/entity/big-electric-pole/remnants/hr-big-electric-pole-base-remnants.png",
          line_length = 1,
          width = 366,
          height = 188,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(43, 0.5),
          scale = 0.5,
          tint = color.paint(12)
        }
      }
    }
  }),

  animation_overlay = make_rotated_animation_variations_from_sheet (4,
  {
    layers = {
      {
        filename = "__base__/graphics/entity/big-electric-pole/remnants/big-electric-pole-top-remnants.png",
        line_length = 1,
        width = 76,
        height = 126,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1, -48),
        tint = color.paint(12),
        hr_version = {
          filename = "__base__/graphics/entity/big-electric-pole/remnants/hr-big-electric-pole-top-remnants.png",
          line_length = 1,
          width = 148,
          height = 252,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1.5, -48),
          scale = 0.5,
          tint = color.paint(12)
        }
      }
    }
  })
},
{
    type = "corpse",
    name = "xmx-mk2-substation-remnants",
    icon = "__base__/graphics/icons/substation.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "energy-pipe-distribution-remnants",
    order = "a-d-a",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (1,
    {
      filename = "__base__/graphics/entity/substation/remnants/substation-remnants.png",
      line_length = 1,
      width = 92,
      height = 68,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(3, 1),
      tint = color.paint(12),
      hr_version = {
        filename = "__base__/graphics/entity/substation/remnants/hr-substation-remnants.png",
        line_length = 1,
        width = 182,
        height = 134,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(2.5, 0.5),
        scale = 0.5,
        tint = color.paint(12)
      }
    })
}
})
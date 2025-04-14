local color = require(xmx_path .. "lib/markColors")

data:extend({{
    type = "corpse",
    name = "xmx-mk2-pipe-to-ground-remnants",
    icons = {
        {
            icon = "__base__/graphics/icons/pipe-to-ground.png",
            tint = color.paint(13)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "energy-pipe-distribution-remnants",
    order = "a-d-a",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__base__/graphics/entity/pipe-to-ground/remnants/pipe-to-ground-remnants.png",
      width = 46,
      height = 40,
      line_length = 1,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(0, -3),
      tint = color.paint(13),
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/remnants/hr-pipe-to-ground-remnants.png",
        width = 90,
        height = 80,
        line_length = 1,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0.5, -3),
        scale = 0.5,
        tint = color.paint(13)
      }
    }
}})
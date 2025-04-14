local color = require(xmx_path .. "lib/markColors")

data:extend({{
    type = "corpse",
    name = "xmx-mk2-beacon-remnants",
    icons = {
      {
        icon = "__base__/graphics/icons/beacon.png",
        tint = color.paint(13)
      }
	},
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "energy-pipe-distribution-remnants",
    order = "a-d-b",
    selection_box = {{-0.5, -1}, {0.5, 1}},
    tile_width = 1,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (2,
    {
      filename = "__base__/graphics/entity/beacon/remnants/beacon-remnants.png",
      line_length = 1,
      width = 106,
      height = 104,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(1, 5),
      tint = color.paint(13),
      hr_version =
      {
        filename = "__base__/graphics/entity/beacon/remnants/hr-beacon-remnants.png",
        line_length = 1,
        width = 212,
        height = 206,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(1, 5),
        scale = 0.5,
        tint = color.paint(13)
      }
    })
}})
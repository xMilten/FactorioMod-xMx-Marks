local color = require(xmx_path .. "lib/markColors")

data:extend({{
    type = "corpse",
    name = "xmx-mk2-storage-tank-remnants",
    icons = {
      {
        icon = "__base__/graphics/icons/storage-tank.png",
        tint = color.paint(14)
      }
	},
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-d-b",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__base__/graphics/entity/storage-tank/remnants/storage-tank-remnants.png",
      line_length = 1,
      width = 214,
      height = 142,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(27, 21), --shift = util.by_pixel(-3, 10.5),
      tint = color.paint(14),
      hr_version =
      {
        filename = "__base__/graphics/entity/storage-tank/remnants/hr-storage-tank-remnants.png",
        line_length = 1,
        width = 426,
        height = 282,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
        scale = 0.5,
        tint = color.paint(14)
      }
    })
}})
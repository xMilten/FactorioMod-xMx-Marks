local color = require(xmx_path .. "lib/markColors")

data:extend({{
    type = "corpse",
    name = "xmx-mk2-lamp-remnants",
    localised_name = {"remnant-name", {"entity-name.small-lamp"}},
	icons = {
		{
			icon = xmx_icons_entities_path .. "small-lamp.png",
			tint = color.paint(3)
		}
	},
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "circuit-network-remnants",
    order = "a-a-a",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (1,
    {
      filename = xmx_image_lamp .. "remnants/lamp-remnants.png",
      line_length = 1,
      width = 52,
      height = 48,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(-1, 3),
	    tint = color.paint(3),
      hr_version =
      {
        filename = xmx_image_lamp .. "remnants/hr-lamp-remnants.png",
        line_length = 1,
        width = 102,
        height = 96,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(-1, 3),
        scale = 0.5,
		    tint = color.paint(3)
      }
    })
}
})
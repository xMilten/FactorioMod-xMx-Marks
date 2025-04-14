data:extend({
    {
        type = "corpse",
        name = "xmx-sink-remnants",
        icon = xmx_icons_entities_path .. "sink.png",
        icon_size = 64,
        flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
        subgroup = "storage-remnants",
        order = "a-d-a",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 1,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet(1, {
            filename = xmx_icons_entities_path .. "sink-remnants.png",
            line_length = 1,
            width = 142,
            height = 94,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(27, 21), --shift = util.by_pixel(-3, 10.5),
            hr_version = {
                filename = xmx_icons_entities_path .. "sink-remnants.png",
                line_length = 1,
                width = 142,
                height = 94,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
                scale = 0.5
            }
        })
    }
})
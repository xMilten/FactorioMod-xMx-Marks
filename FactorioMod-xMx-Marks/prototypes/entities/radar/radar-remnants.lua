local color = require(xmx_path .. "lib/markColors")

local radar_remnants_names = {
	[2] = "xmx-mk2-radar-remnants",
	[3] = "xmx-mk3-radar-remnants"
}

function createXmxMarksRadarsRemnants(data)
    local name = data.name
    local tintHalf = data.tintHalf or {r=1.0, g=1.0, b=1.0, a=0.5}

    return {
        type = "corpse",
        name = name,
        icon = "__base__/graphics/icons/radar.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "not-on-map"},
        subgroup = "defensive-structure-remnants",
        order = "a-g-a",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet (1, {
            filename = "__base__/graphics/entity/radar/remnants/radar-remnants.png",
            line_length = 1,
            width = 142,
            height = 106,
            frame_count = 1,
            variation_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(12, 4),
            tint = tintHalf,
            hr_version = {
                filename = "__base__/graphics/entity/radar/remnants/hr-radar-remnants.png",
                line_length = 1,
                width = 282,
                height = 212,
                frame_count = 1,
                variation_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(12, 4.5),
                scale = 0.5,
                tint = tintHalf
            }
        })
    }
end

local remnants = {
    createXmxMarksRadarsRemnants {
        name = radar_remnants_names[2],
		tintHalf = color.paint(12)
    },
    createXmxMarksRadarsRemnants {
        name = radar_remnants_names[3],
		tintHalf = color.paint(13)
    }
}

data:extend(remnants)
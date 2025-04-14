local color = require(xmx_path .. "lib/markColors")

-- Pipe to ground Mk2 --

local xmx_mk2_pipe_to_Ground = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])

xmx_mk2_pipe_to_Ground.name = "xmx-mk2-pipe-to-ground"
xmx_mk2_pipe_to_Ground.minable = { mining_time = 0.1, result = "xmx-mk2-pipe-to-ground" }
xmx_mk2_pipe_to_Ground.corpse = "xmx-mk2-pipe-to-ground-remnants"
xmx_mk2_pipe_to_Ground.fast_replaceable_group = "pipe-to-ground"
xmx_mk2_pipe_to_Ground.icons = { { icon = "__base__/graphics/icons/pipe-to-ground.png", tint = color.paint(14) } }
xmx_mk2_pipe_to_Ground.max_health = 300
xmx_mk2_pipe_to_Ground.fluid_box.pipe_connections[2].max_underground_distance = 20
xmx_mk2_pipe_to_Ground.pictures.up.tint = color.paint(14)
xmx_mk2_pipe_to_Ground.pictures.up.hr_version.tint = color.paint(14)
xmx_mk2_pipe_to_Ground.pictures.down.tint = color.paint(14)
xmx_mk2_pipe_to_Ground.pictures.down.hr_version.tint = color.paint(14)
xmx_mk2_pipe_to_Ground.pictures.left.tint = color.paint(14)
xmx_mk2_pipe_to_Ground.pictures.left.hr_version.tint = color.paint(14)
xmx_mk2_pipe_to_Ground.pictures.right.tint = color.paint(14)
xmx_mk2_pipe_to_Ground.pictures.right.hr_version.tint = color.paint(14)

data:extend({ xmx_mk2_pipe_to_Ground })
local color = require(xmx_path .. "lib/markColors")
local graphics = require(xmx_prototypes_entities_path .. "inserter/inserter-graphics")

-- Long-handed Stack inserter --

local xmx_long_handed_stack_inserter = table.deepcopy(data.raw["inserter"]["long-handed-inserter"])

xmx_long_handed_stack_inserter.name = "xmx-long-handed-stack-inserter"
xmx_long_handed_stack_inserter.minable = { mining_time = 0.1, result = "xmx-long-handed-stack-inserter" }
xmx_long_handed_stack_inserter.corpse = "xmx-long-handed-stack-inserter-remnants"
xmx_long_handed_stack_inserter.icons = { { icon = "__base__/graphics/icons/long-handed-inserter.png", tint = color.paint(10) } }
xmx_long_handed_stack_inserter.max_health = 240
xmx_long_handed_stack_inserter.stack = true
xmx_long_handed_stack_inserter.energy_per_movement = "30KJ"
xmx_long_handed_stack_inserter.energy_per_rotation = "30KJ"
xmx_long_handed_stack_inserter.rotation_speed = 0.06
xmx_long_handed_stack_inserter.extension_speed = 0.105
xmx_long_handed_stack_inserter.energy_source.drain = "1.5kW"
xmx_long_handed_stack_inserter.hand_base_picture = graphics.long_handed_stack_inserter_base
xmx_long_handed_stack_inserter.hand_closed_picture = graphics.long_handed_stack_inserter_closed
xmx_long_handed_stack_inserter.hand_open_picture = graphics.long_handed_stack_inserter_open
xmx_long_handed_stack_inserter.platform_picture = graphics.long_handed_stack_inserter_platform

data:extend({ xmx_long_handed_stack_inserter })

-- Fast stack inserter --

local xmx_fast_stack_inserter = table.deepcopy(data.raw["inserter"]["stack-inserter"])

xmx_fast_stack_inserter.name = "xmx-fast-stack-inserter"
xmx_fast_stack_inserter.minable = { mining_time = 0.1, result = "xmx-fast-stack-inserter" }
xmx_fast_stack_inserter.corpse = "xmx-fast-stack-inserter-remnants"
xmx_fast_stack_inserter.icons = { { icon = "__base__/graphics/icons/stack-inserter.png", tint = color.paint(24) } }
xmx_fast_stack_inserter.max_health = 320
xmx_fast_stack_inserter.energy_per_movement = "40KJ"
xmx_fast_stack_inserter.energy_per_rotation = "40KJ"
xmx_fast_stack_inserter.rotation_speed = 0.12
xmx_fast_stack_inserter.extension_speed = 0.175
xmx_fast_stack_inserter.energy_source.drain = "2kW"
xmx_fast_stack_inserter.hand_base_picture = graphics.fast_stack_inserter_base
xmx_fast_stack_inserter.hand_closed_picture = graphics.fast_stack_inserter_closed
xmx_fast_stack_inserter.hand_open_picture = graphics.fast_stack_inserter_open
xmx_fast_stack_inserter.platform_picture = graphics.fast_stack_inserter_platform

data:extend({ xmx_fast_stack_inserter })

-- Fast stack filter inserter --

local xmx_fast_stack_filter_inserter = table.deepcopy(data.raw["inserter"]["stack-filter-inserter"])

xmx_fast_stack_filter_inserter.name = "xmx-fast-stack-filter-inserter"
xmx_fast_stack_filter_inserter.minable = { mining_time = 0.1, result = "xmx-fast-stack-filter-inserter" }
xmx_fast_stack_filter_inserter.corpse = "xmx-fast-stack-filter-inserter-remnants"
xmx_fast_stack_filter_inserter.icons = { { icon = "__base__/graphics/icons/stack-filter-inserter.png", tint = color.paint(26) } }
xmx_fast_stack_filter_inserter.filter_count = 1
xmx_fast_stack_filter_inserter.max_health = 320
xmx_fast_stack_filter_inserter.energy_per_movement = "40KJ"
xmx_fast_stack_filter_inserter.energy_per_rotation = "40KJ"
xmx_fast_stack_filter_inserter.rotation_speed = 0.12
xmx_fast_stack_filter_inserter.extension_speed = 0.175
xmx_fast_stack_filter_inserter.energy_source.drain = "2kW"
xmx_fast_stack_filter_inserter.hand_base_picture = graphics.fast_stack_filter_inserter_base
xmx_fast_stack_filter_inserter.hand_closed_picture = graphics.fast_stack_filter_inserter_closed
xmx_fast_stack_filter_inserter.hand_open_picture = graphics.fast_stack_filter_inserter_open
xmx_fast_stack_filter_inserter.platform_picture = graphics.fast_stack_filter_inserter_platform

data:extend({ xmx_fast_stack_filter_inserter })
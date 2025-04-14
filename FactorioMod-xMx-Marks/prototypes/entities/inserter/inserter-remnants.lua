local color = require(xmx_path .. "lib/markColors")

-- Long-handed stack inserter remnants  --

local xmx_long_handed_stack_inserter_remnants = table.deepcopy(data.raw["corpse"]["long-handed-inserter-remnants"])

xmx_long_handed_stack_inserter_remnants.name = "xmx-long-handed-stack-inserter-remnants"
xmx_long_handed_stack_inserter_remnants.icons = { { icon = "__base__/graphics/icons/long-handed-inserter.png", tint = color.paint(10) } }
xmx_long_handed_stack_inserter_remnants.animation[1].tint = color.paint(10)
xmx_long_handed_stack_inserter_remnants.animation[1].hr_version.tint = color.paint(10)
xmx_long_handed_stack_inserter_remnants.animation[2].tint = color.paint(10)
xmx_long_handed_stack_inserter_remnants.animation[2].hr_version.tint = color.paint(10)
xmx_long_handed_stack_inserter_remnants.animation[3].tint = color.paint(10)
xmx_long_handed_stack_inserter_remnants.animation[3].hr_version.tint = color.paint(10)
xmx_long_handed_stack_inserter_remnants.animation[4].tint = color.paint(10)
xmx_long_handed_stack_inserter_remnants.animation[4].hr_version.tint = color.paint(10)

data:extend({ xmx_long_handed_stack_inserter_remnants })

-- Fast stack inserter remnants  --

local xmx_fast_stack_inserter_remnants = table.deepcopy(data.raw["corpse"]["stack-inserter-remnants"])

xmx_fast_stack_inserter_remnants.name = "xmx-fast-stack-inserter-remnants"
xmx_fast_stack_inserter_remnants.icons = { { icon = "__base__/graphics/icons/stack-inserter.png", tint = color.paint(24) } }
xmx_fast_stack_inserter_remnants.animation[1].tint = color.paint(24)
xmx_fast_stack_inserter_remnants.animation[1].hr_version.tint = color.paint(24)
xmx_fast_stack_inserter_remnants.animation[2].tint = color.paint(24)
xmx_fast_stack_inserter_remnants.animation[2].hr_version.tint = color.paint(24)
xmx_fast_stack_inserter_remnants.animation[3].tint = color.paint(24)
xmx_fast_stack_inserter_remnants.animation[3].hr_version.tint = color.paint(24)
xmx_fast_stack_inserter_remnants.animation[4].tint = color.paint(24)
xmx_fast_stack_inserter_remnants.animation[4].hr_version.tint = color.paint(24)

data:extend({ xmx_fast_stack_inserter_remnants })

-- Fast stack filter inserter remnants  --

local xmx_fast_stack_filter_inserter_remnants = table.deepcopy(data.raw["corpse"]["stack-filter-inserter-remnants"])

xmx_fast_stack_filter_inserter_remnants.name = "xmx-fast-stack-filter-inserter-remnants"
xmx_fast_stack_filter_inserter_remnants.icons = { { icon = "__base__/graphics/icons/stack-filter-inserter.png", tint = color.paint(26) } }
xmx_fast_stack_filter_inserter_remnants.animation[1].tint = color.paint(26)
xmx_fast_stack_filter_inserter_remnants.animation[1].hr_version.tint = color.paint(26)
xmx_fast_stack_filter_inserter_remnants.animation[2].tint = color.paint(26)
xmx_fast_stack_filter_inserter_remnants.animation[2].hr_version.tint = color.paint(26)
xmx_fast_stack_filter_inserter_remnants.animation[3].tint = color.paint(26)
xmx_fast_stack_filter_inserter_remnants.animation[3].hr_version.tint = color.paint(26)
xmx_fast_stack_filter_inserter_remnants.animation[4].tint = color.paint(26)
xmx_fast_stack_filter_inserter_remnants.animation[4].hr_version.tint = color.paint(26)

data:extend({ xmx_fast_stack_filter_inserter_remnants })
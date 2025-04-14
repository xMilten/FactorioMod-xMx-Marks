local color = require(xmx_path .. "lib/markColors")

-- Long-handed stack inserter --

local xmx_long_handed_stack_inserter = table.deepcopy(data.raw.item["long-handed-inserter"])

xmx_long_handed_stack_inserter.name = "xmx-long-handed-stack-inserter"
xmx_long_handed_stack_inserter.place_result = "xmx-long-handed-stack-inserter"
xmx_long_handed_stack_inserter.order = "h[xmx-long-handed-stack-inserter]"
xmx_long_handed_stack_inserter.icons = { { icon = "__base__/graphics/icons/long-handed-inserter.png", tint = color.paint(10) } }

data:extend({ xmx_long_handed_stack_inserter })

-- Fast stack inserter --

local  xmx_fast_stack_inserter = table.deepcopy(data.raw.item["stack-inserter"])

 xmx_fast_stack_inserter.name = "xmx-fast-stack-inserter"
 xmx_fast_stack_inserter.place_result = "xmx-fast-stack-inserter"
 xmx_fast_stack_inserter.order = "i[xmx-fast-stack-inserter]"
 xmx_fast_stack_inserter.icons = { { icon = "__base__/graphics/icons/stack-inserter.png", tint = color.paint(24) } }

data:extend({  xmx_fast_stack_inserter })

-- Fast stack filter inserter --

local  xmx_fast_stack_filter_inserter = table.deepcopy(data.raw.item["stack-filter-inserter"])

xmx_fast_stack_filter_inserter.name = "xmx-fast-stack-filter-inserter"
xmx_fast_stack_filter_inserter.place_result = "xmx-fast-stack-filter-inserter"
xmx_fast_stack_filter_inserter.order = "j[xmx-fast-stack-filter-inserter]"
xmx_fast_stack_filter_inserter.icons = { { icon = "__base__/graphics/icons/stack-filter-inserter.png", tint = color.paint(26) } }

data:extend({  xmx_fast_stack_filter_inserter })
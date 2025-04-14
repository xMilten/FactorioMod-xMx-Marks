local color = require(xmx_path .. "lib/markColors")

-- Beacon Mk2 --

local xmx_item_long_handed_stack_inserter = table.deepcopy(data.raw.item["beacon"])

xmx_item_long_handed_stack_inserter.name = "xmx-mk2-beacon"
xmx_item_long_handed_stack_inserter.place_result = "xmx-mk2-beacon"
xmx_item_long_handed_stack_inserter.order = "a[beacon]-b[xmx-mk2-beacon]"
xmx_item_long_handed_stack_inserter.icons = { { icon = "__base__/graphics/icons/beacon.png", tint = color.paint(13) } }
xmx_item_long_handed_stack_inserter.subgroup = "transmissions"
xmx_item_long_handed_stack_inserter.stack_size = 50

data:extend({ xmx_item_long_handed_stack_inserter })
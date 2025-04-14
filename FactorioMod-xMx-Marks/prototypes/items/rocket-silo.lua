local color = require(xmx_path .. "lib/markColors")

-- Small rocket silo --

local xmx_small_rocket_silo = table.deepcopy(data.raw.item["rocket-silo"])

xmx_small_rocket_silo.name = "xmx-small-rocket-silo"
xmx_small_rocket_silo.place_result = "xmx-small-rocket-silo"
xmx_small_rocket_silo.order = "g[xmx-small-rocket-silo]"
xmx_small_rocket_silo.icons = { { icon = "__base__/graphics/icons/rocket-silo.png", tint = color.paint(13) } }

data:extend({ xmx_small_rocket_silo })
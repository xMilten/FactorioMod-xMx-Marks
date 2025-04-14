local color = require(xmx_path .. "lib/markColors")

-- Small rocket silo --

local xmx_small_rocket_silo = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])

xmx_small_rocket_silo.name = "xmx-small-rocket-silo"
xmx_small_rocket_silo.minable = { mining_time = 0.2, result = "xmx-small-rocket-silo" }
--xmx_small_rocket_silo.corpse = "xmx-small-rocket-silo-remnants"
xmx_small_rocket_silo.rocket_entity = "xmx-small-rocket-silo-rocket"
xmx_small_rocket_silo.icons = { { icon = "__base__/graphics/icons/rocket-silo.png", tint = color.paint(12) } }
xmx_small_rocket_silo.max_health = 1250
xmx_small_rocket_silo.rocket_parts_required = 25
xmx_small_rocket_silo.module_specification.module_slots = 1
xmx_small_rocket_silo.energy_usage = "63KJ"
xmx_small_rocket_silo.active_energy_usage = "998KW"

data:extend({ xmx_small_rocket_silo })

-- Small rocket silo rocket --

local xmx_small_rocket_silo_rocket = table.deepcopy(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"])

xmx_small_rocket_silo_rocket.name = "xmx-small-rocket-silo-rocket"

data:extend({ xmx_small_rocket_silo_rocket })
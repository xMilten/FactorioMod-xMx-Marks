-- Small rocket silo --

local xmx_small_rocket_silo = table.deepcopy(data.raw.recipe["rocket-silo"])

xmx_small_rocket_silo.name = "xmx-small-rocket-silo"
xmx_small_rocket_silo.result = "xmx-small-rocket-silo"
xmx_small_rocket_silo.energy_required = 7
xmx_small_rocket_silo.ingredients = { {"steel-plate", 250}, {"concrete", 250}, {"pipe", 25}, {"processing-unit", 50}, {"electric-engine-unit", 50} }

data:extend({ xmx_small_rocket_silo })
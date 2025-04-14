-- Electric mining drill Mk2 --

local xmx_mk2_electric_mining_drill = table.deepcopy(data.raw.recipe["electric-mining-drill"])

xmx_mk2_electric_mining_drill.name = "xmx-mk2-electric-mining-drill"
xmx_mk2_electric_mining_drill.normal.result = "xmx-mk2-electric-mining-drill"
xmx_mk2_electric_mining_drill.normal.ingredients = { {"advanced-circuit", 5}, {"electric-mining-drill", 2} }
xmx_mk2_electric_mining_drill.expensive.result = "xmx-mk2-electric-mining-drill"
xmx_mk2_electric_mining_drill.expensive.ingredients = { {"advanced-circuit", 5}, {"electric-mining-drill", 2} }

data:extend({ xmx_mk2_electric_mining_drill })
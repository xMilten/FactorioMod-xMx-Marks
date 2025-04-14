-- Electric furnace Mk2 --

local xmx_mk2_electric_furnace = table.deepcopy(data.raw.recipe["electric-furnace"])

xmx_mk2_electric_furnace.name = "xmx-mk2-electric-furnace"
xmx_mk2_electric_furnace.result = "xmx-mk2-electric-furnace"
xmx_mk2_electric_furnace.ingredients = { {"processing-unit", 5}, {"electric-furnace", 2} }

data:extend({ xmx_mk2_electric_furnace })
-- Oil refinery Mk2 --

local xmx_mk2_oil_refinery = table.deepcopy(data.raw.recipe["oil-refinery"])

xmx_mk2_oil_refinery.name = "xmx-mk2-oil-refinery"
xmx_mk2_oil_refinery.result = "xmx-mk2-oil-refinery"
xmx_mk2_oil_refinery.ingredients = { {"advanced-circuit", 5}, {"oil-refinery", 2} }

data:extend({ xmx_mk2_oil_refinery })

-- Chemical plant Mk2 --

local xmx_mk2_chemical_plant = table.deepcopy(data.raw.recipe["chemical-plant"])

xmx_mk2_chemical_plant.name = "xmx-mk2-chemical-plant"
xmx_mk2_chemical_plant.result = "xmx-mk2-chemical-plant"
xmx_mk2_chemical_plant.ingredients = { {"advanced-circuit", 5}, {"chemical-plant", 2} }

data:extend({ xmx_mk2_chemical_plant })

-- Pumpjack Mk2 --

local xmx_mk2_pumpjack = table.deepcopy(data.raw.recipe["pumpjack"])

xmx_mk2_pumpjack.name = "xmx-mk2-pumpjack"
xmx_mk2_pumpjack.result = "xmx-mk2-pumpjack"
xmx_mk2_pumpjack.ingredients = { {"advanced-circuit", 5}, {"pumpjack", 2} }

data:extend({ xmx_mk2_pumpjack })
local color = require(xmx_path .. "lib/markColors")

-- Oil refinery Mk2 --

local xmx_mk2_oil_refinery = table.deepcopy(data.raw.item["oil-refinery"])

xmx_mk2_oil_refinery.name = "xmx-mk2-oil-refinery"
xmx_mk2_oil_refinery.place_result = "xmx-mk2-oil-refinery"
xmx_mk2_oil_refinery.order = "d[xmx-mk2-oil-refinery]"
xmx_mk2_oil_refinery.icons = { { icon = "__base__/graphics/icons/oil-refinery.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_oil_refinery })

-- Chemical plant Mk2 --

local xmx_mk2_chemical_plant = table.deepcopy(data.raw.item["chemical-plant"])

xmx_mk2_chemical_plant.name = "xmx-mk2-chemical-plant"
xmx_mk2_chemical_plant.place_result = "xmx-mk2-chemical-plant"
xmx_mk2_chemical_plant.order = "e[xmx-mk2-chemical-plant]"
xmx_mk2_chemical_plant.icons = { { icon = "__base__/graphics/icons/chemical-plant.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_chemical_plant })

-- Pumpjack Mk2 --

local xmx_mk2_pumpjack = table.deepcopy(data.raw.item["pumpjack"])

xmx_mk2_pumpjack.name = "xmx-mk2-pumpjack"
xmx_mk2_pumpjack.place_result = "xmx-mk2-pumpjack"
xmx_mk2_pumpjack.order = "b[fluids]-b[xmx-mk2-pumpjack]"
xmx_mk2_pumpjack.icons = { { icon = "__base__/graphics/icons/pumpjack.png", tint = color.paint(13) } }

data:extend({ xmx_mk2_pumpjack })
local color = require(xmx_path .. "lib/markColors")

-- Oil refinery Mk2 remnants  --

local xmx_mk2_oil_refinery_remnants = table.deepcopy(data.raw["corpse"]["oil-refinery-remnants"])

xmx_mk2_oil_refinery_remnants.name = "xmx-mk2-oil-refinery-remnants"
xmx_mk2_oil_refinery_remnants.icons = { { icon = "__base__/graphics/icons/oil-refinery.png", tint = color.paint(13) } }
xmx_mk2_oil_refinery_remnants.animation[1].tint = color.paint(13)
xmx_mk2_oil_refinery_remnants.animation[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_oil_refinery_remnants })

-- Chemical plant Mk2 remnants  --

local xmx_mk2_chemical_plantremnants = table.deepcopy(data.raw["corpse"]["chemical-plant-remnants"])

xmx_mk2_chemical_plantremnants.name = "xmx-mk2-chemical-plant-remnants"
xmx_mk2_chemical_plantremnants.icons = { { icon = "__base__/graphics/icons/chemical-plant.png", tint = color.paint(13) } }
xmx_mk2_chemical_plantremnants.animation.tint = color.paint(13)
xmx_mk2_chemical_plantremnants.animation.hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_chemical_plantremnants })

-- Pumpjack Mk2 remnants  --

local xmx_mk2_pumpjack_remnants = table.deepcopy(data.raw["corpse"]["pumpjack-remnants"])

xmx_mk2_pumpjack_remnants.name = "xmx-mk2-pumpjack-remnants"
xmx_mk2_pumpjack_remnants.icons = { { icon = "__base__/graphics/icons/pumpjack.png", tint = color.paint(13) } }
xmx_mk2_pumpjack_remnants.animation[1].tint = color.paint(13)
xmx_mk2_pumpjack_remnants.animation[1].hr_version.tint = color.paint(13)
xmx_mk2_pumpjack_remnants.animation[2].tint = color.paint(13)
xmx_mk2_pumpjack_remnants.animation[2].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_pumpjack_remnants })
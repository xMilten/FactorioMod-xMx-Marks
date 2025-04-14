local color = require(xmx_path .. "lib/markColors")

-- Oil refinery Mk2 --

local xmx_mk2_oil_refinery = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])

xmx_mk2_oil_refinery.name = "xmx-mk2-oil-refinery"
xmx_mk2_oil_refinery.minable = { mining_time = 0.2, result = "xmx-mk2-oil-refinery" }
xmx_mk2_oil_refinery.corpse = "xmx-mk2-oil-refinery-remnants"
xmx_mk2_oil_refinery.icons = { { icon = "__base__/graphics/icons/oil-refinery.png", tint = color.paint(13) } }
xmx_mk2_oil_refinery.fast_replaceable_group = "oil-refinery"
xmx_mk2_oil_refinery.max_health = 700
xmx_mk2_oil_refinery.module_specification.module_slots = 4
xmx_mk2_oil_refinery.crafting_speed = 2
xmx_mk2_oil_refinery.energy_usage = "840kW"
xmx_mk2_oil_refinery.animation.north.layers[1].tint = color.paint(13)
xmx_mk2_oil_refinery.animation.north.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_oil_refinery.animation.east.layers[1].tint = color.paint(13)
xmx_mk2_oil_refinery.animation.east.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_oil_refinery.animation.south.layers[1].tint = color.paint(13)
xmx_mk2_oil_refinery.animation.south.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_oil_refinery.animation.west.layers[1].tint = color.paint(13)
xmx_mk2_oil_refinery.animation.west.layers[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_oil_refinery })

-- Chemical plant Mk2 --

local xmx_mk2_chemical_plant = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])

xmx_mk2_chemical_plant.name = "xmx-mk2-chemical-plant"
xmx_mk2_chemical_plant.minable = { mining_time = 0.2, result = "xmx-mk2-chemical-plant" }
xmx_mk2_chemical_plant.corpse = "xmx-mk2-chemical-plant-remnants"
xmx_mk2_chemical_plant.icons = { { icon = "__base__/graphics/icons/chemical-plant.png", tint = color.paint(10) } }
xmx_mk2_chemical_plant.fast_replaceable_group = "chemical-plant"
xmx_mk2_chemical_plant.max_health = 600
xmx_mk2_chemical_plant.module_specification.module_slots = 4
xmx_mk2_chemical_plant.crafting_speed = 2
xmx_mk2_chemical_plant.energy_usage = "420kW"
xmx_mk2_chemical_plant.animation.north.layers[1].tint = color.paint(13)
xmx_mk2_chemical_plant.animation.north.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_chemical_plant.animation.east.layers[1].tint = color.paint(13)
xmx_mk2_chemical_plant.animation.east.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_chemical_plant.animation.south.layers[1].tint = color.paint(13)
xmx_mk2_chemical_plant.animation.south.layers[1].hr_version.tint = color.paint(13)
xmx_mk2_chemical_plant.animation.west.layers[1].tint = color.paint(13)
xmx_mk2_chemical_plant.animation.west.layers[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_chemical_plant })

-- Pumpjack Mk2 --

local xmx_mk2_pumpjack = table.deepcopy(data.raw["mining-drill"]["pumpjack"])

xmx_mk2_pumpjack.name = "xmx-mk2-pumpjack"
xmx_mk2_pumpjack.minable = { mining_time = 0.5, result = "xmx-mk2-pumpjack" }
xmx_mk2_pumpjack.corpse = "xmx-mk2-pumpjack-remnants"
xmx_mk2_pumpjack.icons = { { icon = "__base__/graphics/icons/pumpjack.png", tint = color.paint(13) } }
xmx_mk2_pumpjack.max_health = 400
xmx_mk2_pumpjack.energy_usage = "180kW"
xmx_mk2_pumpjack.mining_speed = 2
xmx_mk2_pumpjack.module_specification.module_slots = 3
xmx_mk2_pumpjack.base_picture.sheets[1].tint = color.paint(13)
xmx_mk2_pumpjack.base_picture.sheets[1].hr_version.tint = color.paint(13)
xmx_mk2_pumpjack.animations.north.layers[1].tint = color.paint(13)
xmx_mk2_pumpjack.animations.north.layers[1].hr_version.tint = color.paint(13)

data:extend({ xmx_mk2_pumpjack })
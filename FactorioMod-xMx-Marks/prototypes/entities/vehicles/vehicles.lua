local color = require(xmx_path .. "lib/markColors")

-- Car Mk2 --

local xmx_mk2_car = table.deepcopy(data.raw["car"]["car"])

xmx_mk2_car.name = "xmx-mk2-car"
xmx_mk2_car.minable = { mining_time = 0.4, result = "xmx-mk2-car" }
xmx_mk2_car.corpse = "xmx-mk2-car-remnants"
xmx_mk2_car.icons = { { icon = "__base__/graphics/icons/car.png", tint = color.paint(10) } }
xmx_mk2_car.max_health = 900
xmx_mk2_car.immune_to_tree_impacts = true
xmx_mk2_car.immune_to_rock_impacts = true
xmx_mk2_car.effectivity = 1.2
xmx_mk2_car.burner.fuel_inventory_size = 2
xmx_mk2_car.consumption = "300kW"
xmx_mk2_car.guns = { "vehicle-machine-gun", "vehicle-machine-gun" }
xmx_mk2_car.inventory_size = 160
xmx_mk2_car.animation.layers[1].tint = color.paint(10)
xmx_mk2_car.animation.layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_car })

-- Tank Mk2 --

local xmx_mk2_tank = table.deepcopy(data.raw["car"]["tank"])

xmx_mk2_tank.name = "xmx-mk2-tank"
xmx_mk2_tank.minable = { mining_time = 0.5, result = "xmx-mk2-tank" }
xmx_mk2_tank.corpse = "xmx-mk2-tank-remnants"
xmx_mk2_tank.icons = { { icon = "__base__/graphics/icons/tank.png", tint = color.paint(10) } }
xmx_mk2_tank.max_health = 4000
xmx_mk2_tank.effectivity = 1.8
xmx_mk2_tank.burner.fuel_inventory_size = 4
xmx_mk2_tank.consumption = "1200kW"
xmx_mk2_tank.turret_rotation_speed = 0.7 / 60
xmx_mk2_tank.rotation_speed = 0.0070
xmx_mk2_tank.guns = { "tank-cannon", "tank-cannon", "tank-machine-gun", "tank-machine-gun", "tank-flamethrower", "tank-flamethrower" }
xmx_mk2_tank.inventory_size = 160
xmx_mk2_tank.animation.layers[1].tint = color.paint(10)
xmx_mk2_tank.animation.layers[1].hr_version.tint = color.paint(10)

data:extend({ xmx_mk2_tank })

-- Spidertron Mk2 --

local xmx_mk2_spidertron = table.deepcopy(data.raw["spider-vehicle"]["spidertron"])

xmx_mk2_spidertron.name = "xmx-mk2-spidertron"
xmx_mk2_spidertron.minable = { mining_time = 0.5, result = "xmx-mk2-spidertron" }
xmx_mk2_spidertron.corpse = "xmx-mk2-spidertron-remnants"
xmx_mk2_spidertron.icons = { { icon = "__base__/graphics/icons/spidertron.png", tint = color.paint(10) } }
xmx_mk2_spidertron.max_health = 6000
xmx_mk2_spidertron.chunk_exploration_radius = 10
xmx_mk2_spidertron.torso_rotation_speed = 0.01
xmx_mk2_spidertron.movement_energy_consumption = "500kW"
xmx_mk2_spidertron.guns = { "spidertron-rocket-launcher-1", "spidertron-rocket-launcher-1", "spidertron-rocket-launcher-2", "spidertron-rocket-launcher-2", "spidertron-rocket-launcher-3", "spidertron-rocket-launcher-3", "spidertron-rocket-launcher-4", "spidertron-rocket-launcher-4" }
xmx_mk2_spidertron.inventory_size = 160
xmx_mk2_spidertron.graphics_set.base_animation.layers[1].tint = color.paint(10)
xmx_mk2_spidertron.graphics_set.base_animation.layers[1].hr_version.tint = color.paint(10)
xmx_mk2_spidertron.graphics_set.animation.layers[1].tint = color.paint(10)
xmx_mk2_spidertron.graphics_set.animation.layers[1].hr_version.tint = color.paint(10)

-- Spidertron Mk2 equipment grid --

local xmx_mk2_spidertron_grid = table.deepcopy(data.raw["equipment-grid"]["spidertron-equipment-grid"])

xmx_mk2_spidertron_grid.name = "xmx-mk2-spidertron-grid"
xmx_mk2_spidertron_grid.width = 10
xmx_mk2_spidertron_grid.height = 16

data:extend({ xmx_mk2_spidertron_grid })

xmx_mk2_spidertron.equipment_grid = "xmx-mk2-spidertron-grid"

-- Spidertron Mk2 legs --

for i = 1, 8, 1
do
    local xmx_mk2_spidertron_leg = table.deepcopy(data.raw["spider-leg"]["spidertron-leg-" .. i ])
    
    xmx_mk2_spidertron_leg.initial_movement_speed = 0.12
    xmx_mk2_spidertron_leg.movement_acceleration = 0.06

    data:extend({ xmx_mk2_spidertron_leg })

    xmx_mk2_spidertron.spider_engine.legs[i].leg = "spidertron-leg-" .. i 
end

data:extend({ xmx_mk2_spidertron })
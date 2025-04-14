local color = require(xmx_path .. "lib/markColors")

-- Boiler Mk2 --

local xmx_mk2_boiler = table.deepcopy(data.raw["boiler"]["boiler"])

xmx_mk2_boiler.name = "xmx-mk2-boiler"
xmx_mk2_boiler.minable = { mining_time = 0.2, result = "xmx-mk2-boiler" }
xmx_mk2_boiler.corpse = "xmx-mk2-boiler-remnants"
xmx_mk2_boiler.fast_replaceable_group = "boiler"
xmx_mk2_boiler.icons = { { icon = "__base__/graphics/icons/boiler.png", tint = color.paint(14) } }
xmx_mk2_boiler.max_health = 400
xmx_mk2_boiler.energy_consumption = "7.2MW"
xmx_mk2_boiler.energy_source.effectivity = 2
xmx_mk2_boiler.energy_source.emissions_per_minute = 60
xmx_mk2_boiler.structure.north.layers[1].tint = color.paint(14)
xmx_mk2_boiler.structure.north.layers[1].hr_version.tint = color.paint(14)
xmx_mk2_boiler.structure.east.layers[1].tint = color.paint(14)
xmx_mk2_boiler.structure.east.layers[1].hr_version.tint = color.paint(14)
xmx_mk2_boiler.structure.south.layers[1].tint = color.paint(14)
xmx_mk2_boiler.structure.south.layers[1].hr_version.tint = color.paint(14)
xmx_mk2_boiler.structure.west.layers[1].tint = color.paint(14)
xmx_mk2_boiler.structure.west.layers[1].hr_version.tint = color.paint(14)

data:extend({ xmx_mk2_boiler })

-- Steam engine Mk2 --

local xmx_mk2_steam_engine = table.deepcopy(data.raw["generator"]["steam-engine"])

xmx_mk2_steam_engine.name = "xmx-mk2-steam-engine"
xmx_mk2_steam_engine.minable = { mining_time = 0.3, result = "xmx-mk2-steam-engine" }
xmx_mk2_steam_engine.corpse = "xmx-mk2-steam-engine-remnants"
xmx_mk2_steam_engine.fast_replaceable_group = "steam-engine"
xmx_mk2_steam_engine.icons = { { icon = "__base__/graphics/icons/steam-engine.png", tint = color.paint(14) } }
xmx_mk2_steam_engine.max_health = 800
xmx_mk2_steam_engine.effectivity = 2
xmx_mk2_steam_engine.fluid_usage_per_tick = 1
xmx_mk2_steam_engine.horizontal_animation.layers[1].tint = color.paint(14)
xmx_mk2_steam_engine.horizontal_animation.layers[1].hr_version.tint = color.paint(14)
xmx_mk2_steam_engine.vertical_animation.layers[1].tint = color.paint(14)
xmx_mk2_steam_engine.vertical_animation.layers[1].hr_version.tint = color.paint(14)

data:extend({ xmx_mk2_steam_engine })

-- Solar panel Mk2 --

local xmx_mk2_solar_panel = table.deepcopy(data.raw["solar-panel"]["solar-panel"])

xmx_mk2_solar_panel.name = "xmx-mk2-solar-panel"
xmx_mk2_solar_panel.minable = { mining_time = 0.1, result = "xmx-mk2-solar-panel" }
xmx_mk2_solar_panel.corpse = "xmx-mk2-solar-panel-remnants"
xmx_mk2_solar_panel.fast_replaceable_group = "solar-panel"
xmx_mk2_solar_panel.icons = { { icon = "__base__/graphics/icons/solar-panel.png", tint = color.paint(16) } }
xmx_mk2_solar_panel.max_health = 400
xmx_mk2_solar_panel.production = "240kW"
xmx_mk2_solar_panel.picture.layers[1].tint = color.paint(16)
xmx_mk2_solar_panel.picture.layers[1].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_solar_panel })

-- Accumulator Mk2 --

local xmx_mk2_accumulator = table.deepcopy(data.raw["accumulator"]["accumulator"])

xmx_mk2_accumulator.name = "xmx-mk2-accumulator"
xmx_mk2_accumulator.minable = { mining_time = 0.1, result = "xmx-mk2-accumulator" }
xmx_mk2_accumulator.corpse = "xmx-mk2-accumulator-remnants"
xmx_mk2_accumulator.fast_replaceable_group = "accumulator"
xmx_mk2_accumulator.icons = { { icon = "__base__/graphics/icons/accumulator.png", tint = color.paint(16) } }
xmx_mk2_accumulator.max_health = 300
xmx_mk2_accumulator.energy_source.buffer_capacity = "20MJ"
xmx_mk2_accumulator.energy_source.input_flow_limit = "1200kW"
xmx_mk2_accumulator.energy_source.output_flow_limit = "1200kW"
xmx_mk2_accumulator.picture.layers[1].tint = color.paint(16)
xmx_mk2_accumulator.picture.layers[1].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_accumulator })

-- Nuclear reactor Mk2 --

local xmx_mk2_nuclear_reactor = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])

xmx_mk2_nuclear_reactor.name = "xmx-mk2-nuclear-reactor"
xmx_mk2_nuclear_reactor.minable = { mining_time = 0.5, result = "xmx-mk2-nuclear-reactor" }
xmx_mk2_nuclear_reactor.corpse = "xmx-mk2-nuclear-reactor-remnants"
xmx_mk2_nuclear_reactor.fast_replaceable_group = "nuclear-reactor"
xmx_mk2_nuclear_reactor.icons = { { icon = "__base__/graphics/icons/nuclear-reactor.png", tint = color.paint(16) } }
xmx_mk2_nuclear_reactor.max_health = 1000
xmx_mk2_nuclear_reactor.consumption = "160MW"
xmx_mk2_nuclear_reactor.energy_source.effectivity = 2
xmx_mk2_nuclear_reactor.picture.layers[1].tint = color.paint(16)
xmx_mk2_nuclear_reactor.picture.layers[1].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_nuclear_reactor })

-- Heat pipe Mk2 --

local xmx_mk2_heat_pipe = table.deepcopy(data.raw["heat-pipe"]["heat-pipe"])

xmx_mk2_heat_pipe.name = "xmx-mk2-heat-pipe"
xmx_mk2_heat_pipe.minable = { mining_time = 0.1, result = "xmx-mk2-heat-pipe" }
xmx_mk2_heat_pipe.corpse = "xmx-mk2-heat-pipe-remnants"
xmx_mk2_heat_pipe.fast_replaceable_group = "heat-pipe"
xmx_mk2_heat_pipe.icons = { { icon = "__base__/graphics/icons/heat-pipe.png", tint = color.paint(16) } }
xmx_mk2_heat_pipe.max_health = 400
xmx_mk2_heat_pipe.target_temperature = 250
xmx_mk2_heat_pipe.energy_consumption = "20MW"
xmx_mk2_heat_pipe.heat_buffer.max_temperature = 2000
xmx_mk2_heat_pipe.heat_buffer.specific_heat = "4MJ"
xmx_mk2_heat_pipe.heat_buffer.max_transfer = "4GW"
xmx_mk2_heat_pipe.heat_buffer.min_working_temperature = 1000
xmx_mk2_heat_pipe.heat_buffer.minimum_glow_temperature = 700

data:extend({ xmx_mk2_heat_pipe })

-- Heat exchanger Mk2 --

local xmx_mk2_heat_exchanger = table.deepcopy(data.raw["boiler"]["heat-exchanger"])

xmx_mk2_heat_exchanger.name = "xmx-mk2-heat-exchanger"
xmx_mk2_heat_exchanger.minable = { mining_time = 0.1, result = "xmx-mk2-heat-exchanger" }
xmx_mk2_heat_exchanger.corpse = "xmx-mk2-heat-exchanger-remnants"
xmx_mk2_heat_exchanger.fast_replaceable_group = "heat-exchanger"
xmx_mk2_heat_exchanger.icons = { { icon = "__base__/graphics/icons/heat-boiler.png", tint = color.paint(16) } }
xmx_mk2_heat_exchanger.max_health = 400
xmx_mk2_heat_exchanger.energy_source.max_temperature = 2000
xmx_mk2_heat_exchanger.energy_source.specific_heat = "2MJ"
xmx_mk2_heat_exchanger.energy_source.max_transfer = "4GW"
xmx_mk2_heat_exchanger.energy_source.minimum_glow_temperature = 700
xmx_mk2_heat_exchanger.structure.north.layers[1].tint = color.paint(16)
xmx_mk2_heat_exchanger.structure.north.layers[1].hr_version.tint = color.paint(16)
xmx_mk2_heat_exchanger.structure.east.layers[1].tint = color.paint(16)
xmx_mk2_heat_exchanger.structure.east.layers[1].hr_version.tint = color.paint(16)
xmx_mk2_heat_exchanger.structure.south.layers[1].tint = color.paint(16)
xmx_mk2_heat_exchanger.structure.south.layers[1].hr_version.tint = color.paint(16)
xmx_mk2_heat_exchanger.structure.west.layers[1].tint = color.paint(16)
xmx_mk2_heat_exchanger.structure.west.layers[1].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_heat_exchanger })

-- Steam turbine Mk2 --

local xmx_mk2_steam_turbine = table.deepcopy(data.raw["generator"]["steam-turbine"])

xmx_mk2_steam_turbine.name = "xmx-mk2-steam-turbine"
xmx_mk2_steam_turbine.minable = { mining_time = 0.3, result = "xmx-mk2-steam-turbine" }
xmx_mk2_steam_turbine.corpse = "xmx-mk2-steam-turbine-remnants"
xmx_mk2_steam_turbine.fast_replaceable_group = "steam-turbine"
xmx_mk2_steam_turbine.icons = { { icon = "__base__/graphics/icons/steam-turbine.png", tint = color.paint(16) } }
xmx_mk2_steam_turbine.max_health = 600
xmx_mk2_steam_turbine.effectivity = 2
xmx_mk2_steam_turbine.fluid_usage_per_tick = 2
xmx_mk2_steam_turbine.fluid_box.minimum_temperature = 200.0
xmx_mk2_steam_turbine.horizontal_animation.layers[1].tint = color.paint(16)
xmx_mk2_steam_turbine.horizontal_animation.layers[1].hr_version.tint = color.paint(16)
xmx_mk2_steam_turbine.vertical_animation.layers[1].tint = color.paint(16)
xmx_mk2_steam_turbine.vertical_animation.layers[1].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_steam_turbine })
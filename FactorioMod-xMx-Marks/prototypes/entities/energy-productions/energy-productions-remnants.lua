local color = require(xmx_path .. "lib/markColors")

-- Boiler Mk2 remnants --

local xmx_mk2_boiler_remnants = table.deepcopy(data.raw["corpse"]["boiler-remnants"])

xmx_mk2_boiler_remnants.name = "xmx-mk2-boiler-remnants"
xmx_mk2_boiler_remnants.icons = { { icon = "__base__/graphics/icons/boiler.png", tint = color.paint(14) } }
xmx_mk2_boiler_remnants.animation.tint = color.paint(14)
xmx_mk2_boiler_remnants.animation.hr_version.tint = color.paint(14)

data:extend({ xmx_mk2_boiler_remnants })

-- Steam engine Mk2 remnants --

local xmx_mk2_steam_engine_remnants = table.deepcopy(data.raw["corpse"]["steam-engine-remnants"])

xmx_mk2_steam_engine_remnants.name = "xmx-mk2-steam-engine-remnants"
xmx_mk2_steam_engine_remnants.icons = { { icon = "__base__/graphics/icons/steam-engine.png", tint = color.paint(14) } }
xmx_mk2_steam_engine_remnants.animation[1].tint = color.paint(14)
xmx_mk2_steam_engine_remnants.animation[1].hr_version.tint = color.paint(14)

data:extend({ xmx_mk2_steam_engine_remnants })

-- Solar panel Mk2 remnants --

local xmx_mk2_solar_panel_remnants = table.deepcopy(data.raw["corpse"]["solar-panel-remnants"])

xmx_mk2_solar_panel_remnants.name = "xmx-mk2-solar-panel-remnants"
xmx_mk2_solar_panel_remnants.icons = { { icon = "__base__/graphics/icons/solar-panel.png", tint = color.paint(16) } }
xmx_mk2_solar_panel_remnants.animation[1].tint = color.paint(16)
xmx_mk2_solar_panel_remnants.animation[1].hr_version.tint = color.paint(16)
xmx_mk2_solar_panel_remnants.animation[2].tint = color.paint(16)
xmx_mk2_solar_panel_remnants.animation[2].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_solar_panel_remnants })

-- Accumulator Mk2 remnants --

local xmx_mk2_accumulator_remnants = table.deepcopy(data.raw["corpse"]["accumulator-remnants"])

xmx_mk2_accumulator_remnants.name = "xmx-mk2-accumulator-remnants"
xmx_mk2_accumulator_remnants.icons = { { icon = "__base__/graphics/icons/accumulator.png", tint = color.paint(16) } }
xmx_mk2_accumulator_remnants.animation[1].tint = color.paint(16)
xmx_mk2_accumulator_remnants.animation[1].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_accumulator_remnants })

-- Nuclear reactor Mk2 remnants --

local xmx_mk2_nuclear_reactor_remnants = table.deepcopy(data.raw["corpse"]["nuclear-reactor-remnants"])

xmx_mk2_nuclear_reactor_remnants.name = "xmx-mk2-nuclear-reactor-remnants"
xmx_mk2_nuclear_reactor_remnants.icons = { { icon = "__base__/graphics/icons/nuclear-reactor.png", tint = color.paint(16) } }
xmx_mk2_nuclear_reactor_remnants.animation.tint = color.paint(16)
xmx_mk2_nuclear_reactor_remnants.animation.hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_nuclear_reactor_remnants })

-- Heat pipe Mk2 remnants --

local xmx_mk2_heat_pipe_remnants = table.deepcopy(data.raw["corpse"]["heat-pipe-remnants"])

xmx_mk2_heat_pipe_remnants.name = "xmx-mk2-heat-pipe-remnants"
xmx_mk2_heat_pipe_remnants.icons = { { icon = "__base__/graphics/icons/heat-pipe.png", tint = color.paint(16) } }
xmx_mk2_heat_pipe_remnants.animation[1].tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[1].hr_version.tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[2].tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[2].hr_version.tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[3].tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[3].hr_version.tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[4].tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[4].hr_version.tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[5].tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[5].hr_version.tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[6].tint = color.paint(16)
xmx_mk2_heat_pipe_remnants.animation[6].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_heat_pipe_remnants })

-- Heat exchanger Mk2 remnants --

local xmx_mk2_heat_exchanger_remnants = table.deepcopy(data.raw["corpse"]["heat-exchanger-remnants"])

xmx_mk2_heat_exchanger_remnants.name = "xmx-mk2-heat-exchanger-remnants"
xmx_mk2_heat_exchanger_remnants.icons = { { icon = "__base__/graphics/icons/heat-boiler.png", tint = color.paint(16) } }
xmx_mk2_heat_exchanger_remnants.animation.tint = color.paint(16)
xmx_mk2_heat_exchanger_remnants.animation.hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_heat_exchanger_remnants })

-- Steam turbine Mk2 remnants --

local xmx_mk2_steam_turbine_remnants = table.deepcopy(data.raw["corpse"]["steam-turbine-remnants"])

xmx_mk2_steam_turbine_remnants.name = "xmx-mk2-steam-turbine-remnants"
xmx_mk2_steam_turbine_remnants.icons = { { icon = "__base__/graphics/icons/steam-turbine.png", tint = color.paint(16) } }
xmx_mk2_steam_turbine_remnants.animation[1].tint = color.paint(16)
xmx_mk2_steam_turbine_remnants.animation[1].hr_version.tint = color.paint(16)

data:extend({ xmx_mk2_steam_turbine_remnants })
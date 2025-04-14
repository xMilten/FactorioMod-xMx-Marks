-- Locomotive Mk2 --

local xmx_recipes_mk2_locomotive = table.deepcopy(data.raw.recipe["locomotive"])

xmx_recipes_mk2_locomotive.name = "xmx-mk2-locomotive"
xmx_recipes_mk2_locomotive.result = "xmx-mk2-locomotive"
xmx_recipes_mk2_locomotive.ingredients = { {"locomotive", 2} }

data:extend({ xmx_recipes_mk2_locomotive })

-- Cargo wagon Mk2 --

local xmx_recipes_mk2_cargo_wagon = table.deepcopy(data.raw.recipe["cargo-wagon"])

xmx_recipes_mk2_cargo_wagon.name = "xmx-mk2-cargo-wagon"
xmx_recipes_mk2_cargo_wagon.result = "xmx-mk2-cargo-wagon"
xmx_recipes_mk2_cargo_wagon.ingredients = { {"cargo-wagon", 2} }

data:extend({ xmx_recipes_mk2_cargo_wagon })
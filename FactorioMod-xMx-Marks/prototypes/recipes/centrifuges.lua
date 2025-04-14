-- Centrifuge Mk2 --

local xmx_mk2_centrifuge = table.deepcopy(data.raw.recipe["centrifuge"])

xmx_mk2_centrifuge.name = "xmx-mk2-centrifuge"
xmx_mk2_centrifuge.result = "xmx-mk2-centrifuge"
xmx_mk2_centrifuge.ingredients = { {"processing-unit", 5}, {"centrifuge", 2} }

data:extend({ xmx_mk2_centrifuge })
-- NAME Mk2 --

local xmx_mk2_NAME = table.deepcopy(data.raw.recipe["NAME"])

xmx_mk2_NAME.name = "xmx-mk2-NAME"
xmx_mk2_NAME.result = "xmx-mk2-NAME"
xmx_mk2_NAME.ingredients = { {"processing-unit", 5}, {"NAME", 1} }

data:extend({ xmx_mk2_NAME })
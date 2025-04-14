-- Beacon Mk2 --

local xmx_mk2_beacon = table.deepcopy(data.raw.recipe["beacon"])

xmx_mk2_beacon.name = "xmx-mk2-beacon"
xmx_mk2_beacon.result = "xmx-mk2-beacon"
xmx_mk2_beacon.ingredients = { {"processing-unit", 5}, {"beacon", 1} }

data:extend({ xmx_mk2_beacon })
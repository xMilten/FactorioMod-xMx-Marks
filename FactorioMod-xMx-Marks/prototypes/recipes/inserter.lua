-- Long-handed stack inserter --

local xmx_long_handed_stack_inserter = table.deepcopy(data.raw.recipe["long-handed-inserter"])

xmx_long_handed_stack_inserter.name = "xmx-long-handed-stack-inserter"
xmx_long_handed_stack_inserter.result = "xmx-long-handed-stack-inserter"
xmx_long_handed_stack_inserter.ingredients = { {"stack-inserter", 1}, {"electronic-circuit", 5} }

data:extend({ xmx_long_handed_stack_inserter })

-- Fast stack inserter --

local xmx_fast_stack_inserter = table.deepcopy(data.raw.recipe["stack-inserter"])

xmx_fast_stack_inserter.name = "xmx-fast-stack-inserter"
xmx_fast_stack_inserter.result = "xmx-fast-stack-inserter"
xmx_fast_stack_inserter.ingredients = { {"stack-inserter", 1}, {"electronic-circuit", 5} }

data:extend({ xmx_fast_stack_inserter })

-- Fast stack filter inserter --

local xmx_fast_stack_filter_inserter = table.deepcopy(data.raw.recipe["stack-filter-inserter"])

xmx_fast_stack_filter_inserter.name = "xmx-fast-stack-filter-inserter"
xmx_fast_stack_filter_inserter.result = "xmx-fast-stack-filter-inserter"
xmx_fast_stack_filter_inserter.ingredients = { {"xmx-fast-stack-inserter", 1}, {"electronic-circuit", 5} }

data:extend({ xmx_fast_stack_filter_inserter })
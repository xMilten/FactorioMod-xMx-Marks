data.raw.recipe["transport-belt"].enabled = false

data.raw.recipe["transport-belt"].ingredients = {
	{"iron-gear-wheel", 1},
	{"xmx-mk1-transport-belt", 2}
}
data.raw.recipe["fast-transport-belt"].ingredients = {
	{"iron-gear-wheel", 5},
	{"transport-belt", 1}
}
data.raw.recipe["express-transport-belt"].ingredients = {
	{"iron-gear-wheel", 5},
	{"fast-transport-belt", 1},
	{type="fluid", name="lubricant", amount=20}
}
data.raw.recipe["underground-belt"].ingredients = {
	{"iron-plate", 10},
	{"xmx-mk1-underground-belt", 2}
}
data.raw.recipe["fast-underground-belt"].ingredients = {
	{"iron-gear-wheel", 40},
	{"underground-belt", 2}
}
data.raw.recipe["express-underground-belt"].ingredients = {
	{"iron-gear-wheel", 40},
	{"fast-underground-belt", 2},
	{type="fluid", name="lubricant", amount=40}
}
data.raw.recipe["splitter"].ingredients = {
	{"electronic-circuit", 5},
	{"iron-plate", 5},
	{"xmx-mk1-splitter", 1}
}
data.raw.recipe["fast-splitter"].ingredients = {
	{"iron-gear-wheel", 10},
	{"advanced-circuit", 10},
	{"splitter", 1}
}
data.raw.recipe["express-splitter"].ingredients = {
	{"iron-gear-wheel", 10},
	{"advanced-circuit", 10},
	{"fast-splitter", 1},
	{type="fluid", name="lubricant", amount=80}
}
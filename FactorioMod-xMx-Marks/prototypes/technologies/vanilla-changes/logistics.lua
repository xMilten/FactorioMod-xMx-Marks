--------------------------------------------------------------------------------------------------------------
-- Logistics
--------------------------------------------------------------------------------------------------------------
data.raw.technology["logistics"].effects = {
    {
        type = "unlock-recipe",
        recipe = "transport-belt"
    },
    {
        type = "unlock-recipe",
        recipe = "underground-belt"
    },
    {
        type = "unlock-recipe",
        recipe = "splitter"
    }
}
data.raw.technology["logistics"].prerequisites = {"xmx-mk1-logistics", "logistic-science-pack"}
data.raw.technology["logistics"].unit = {
    count = 100,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
    },
    time = 20
}
--------------------------------------------------------------------------------------------------------------
-- Logistics-2
--------------------------------------------------------------------------------------------------------------
data.raw.technology["logistics-2"].prerequisites = {"logistics", "chemical-science-pack"}
data.raw.technology["logistics-2"].unit = {
    count = 200,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
    },
    time = 20
}
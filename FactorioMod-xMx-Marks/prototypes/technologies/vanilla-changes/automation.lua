local color = require(xmx_path .. "lib/markColors")
--------------------------------------------------------------------------------------------------------------
-- Automation Fixes
--------------------------------------------------------------------------------------------------------------
data.raw.technology["concrete"].prerequisites = {"advanced-material-processing", "xmx-mk2-automation"}
data.raw.technology["research-speed-1"].prerequisites = {"xmx-mk2-automation"}
data.raw.technology["fluid-handling"].prerequisites = {"xmx-mk2-automation", "engine"}
--------------------------------------------------------------------------------------------------------------
-- Automation-1 (MK1)
--------------------------------------------------------------------------------------------------------------
data.raw.technology["automation"].icon = {}
data.raw.technology["automation"].icons = {
    {
        icon = "__base__/graphics/technology/automation-1.png"
    },
    {
        icon = xmx_technologies_path .. "automation-mask.png",
        tint = color.paint(1)
    }
}
--------------------------------------------------------------------------------------------------------------
-- Automation-2 (MK3)
--------------------------------------------------------------------------------------------------------------
data.raw.technology["automation-2"].icon = {}
data.raw.technology["automation-2"].icons = {
    {
        icon = "__base__/graphics/technology/automation-1.png"
    },
    {
        icon = xmx_technologies_path .. "automation-mask.png",
        tint = color.paint(3)
    }
}
data.raw.technology["automation-2"].prerequisites = {"chemical-science-pack"}
data.raw.technology["automation-2"].unit = {
    count = 80,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
    },
    time = 30
}
--------------------------------------------------------------------------------------------------------------
-- Automation-3 (MK5)
--------------------------------------------------------------------------------------------------------------
data.raw.technology["automation-3"].icon = {}
data.raw.technology["automation-3"].icons = {
    {
        icon = "__base__/graphics/technology/automation-1.png"
    },
    {
        icon = xmx_technologies_path .. "automation-mask.png",
        tint = color.paint(5)
    }
}
data.raw.technology["automation-3"].prerequisites = {"xmx-mk4-automation", "speed-module-2", "utility-science-pack"}
data.raw.technology["automation-3"].unit = {
    count = 250,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
    },
    time = 60
}
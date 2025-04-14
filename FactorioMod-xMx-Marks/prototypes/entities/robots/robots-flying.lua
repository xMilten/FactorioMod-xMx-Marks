local color = require(xmx_path .. "lib/markColors")
local robot_animations = require(xmx_prototypes_entities_path .. "robots/robots-animations")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({{
    type = "construction-robot",
    name = "xmx-mk2-construction-robot",
    icons = {
        {
            icon = "__base__/graphics/icons/construction-robot.png",
            tint = color.paint(12)
        }
    },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "xmx-mk2-construction-robot"},
    resistances =
    {
        {
            type = "fire",
            percent = 85
        }
    },
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "construction-robot-explosion",
    max_payload_size = 2,
    speed = 0.12,
    max_energy = "3MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.4,
    energy_per_move = "3kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    --working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    smoke = {
        filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
        width = 39,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.078125, -0.15625},
        animation_speed = 0.3
    },
    sparks = robot_animations.sparks,
    repairing_sound = {
        { filename = "__base__/sound/robot-repair-1.ogg", volume = 0.6 },
        { filename = "__base__/sound/robot-repair-2.ogg", volume = 0.6 },
        { filename = "__base__/sound/robot-repair-3.ogg", volume = 0.6 },
        { filename = "__base__/sound/robot-repair-4.ogg", volume = 0.6 },
        { filename = "__base__/sound/robot-repair-5.ogg", volume = 0.6 },
        { filename = "__base__/sound/robot-repair-6.ogg", volume = 0.6 },
    },
    working_sound = sounds.construction_robot(0.47),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    water_reflection = robot_reflection(1),
    idle = robot_animations.construction_robot.idle,
    idle_with_cargo = robot_animations.construction_robot.idle_with_cargo,
    in_motion = robot_animations.construction_robot.in_motion,
    in_motion_with_cargo = robot_animations.construction_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.construction_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.construction_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.construction_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.construction_robot.shadow_in_motion_with_cargo,
    working = robot_animations.construction_robot.working,
    shadow_working = robot_animations.construction_robot.shadow_working
},
{
    type = "logistic-robot",
    name = "xmx-mk2-logistic-robot",
    icon = "__base__/graphics/icons/logistic-robot.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "xmx-mk2-logistic-robot"},
    resistances = {
        {
            type = "fire",
            percent = 85
        }
    },
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "logistic-robot-explosion",
    max_payload_size = 2,
    speed = 0.1,
    max_energy = "3MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.4,
    energy_per_move = "3kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(0.48),
    cargo_centered = {0.0, 0.2},
    water_reflection = robot_reflection(1),
    idle = robot_animations.logistic_robot.idle,
    idle_with_cargo = robot_animations.logistic_robot.idle_with_cargo,
    in_motion = robot_animations.logistic_robot.in_motion,
    in_motion_with_cargo = robot_animations.logistic_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.logistic_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.logistic_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.logistic_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.logistic_robot.shadow_in_motion_with_cargo
}
})
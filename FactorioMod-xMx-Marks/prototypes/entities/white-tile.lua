data:extend(
{
  {	

	  type = "tile",
      name = "white-tile",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "white-tile"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.4,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__xmx-marks__/graphics/concrete-dummy.png",
            count = 1,
            size = 1
          },
          {
            picture = "__xmx-marks__/graphics/concrete-dummy.png",
            count = 1,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__xmx-marks__/graphics/concrete-dummy.png",
            count = 1,
            size = 4,
            probability = 1,
          },
        },
        inner_corner =
        {
          picture = "__xmx-marks__/graphics/concrete-inner-corner.png",
          count = 16
        },
        outer_corner =
        {
          picture = "__xmx-marks__/graphics/concrete-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__xmx-marks__/graphics/concrete-side.png",
          count = 16
        },
        u_transition =
        {
          picture = "__xmx-marks__/graphics/concrete-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__xmx-marks__/graphics/concrete-o.png",
          count = 4
        }
      },
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/concrete-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=100, g=100, b=100},
      ageing=0,
    pollution_absorption_per_second = 0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier 
  
  }
	 
}
)
local color = require(xmx_path .. "lib/markColors")
local graphics = {}

-- Long handed stack inserter --

graphics.long_handed_stack_inserter_base = {
  layers = {
    {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "long-handed-inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      tint = color.paint(23),
      hr_version = {
        filename =  xmx_image_inserter .. "long-handed-inserter/hr-long-handed-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25,
        tint = color.paint(23)
      }
    }
  }
}

graphics.long_handed_stack_inserter_closed = {
  layers = {
    {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-closed.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "long-handed-inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      tint = color.paint(23),
      hr_version = {
        filename =  xmx_image_inserter .. "long-handed-inserter/hr-long-handed-inserter-hand-closed.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25,
        tint = color.paint(23)
      }
    }
  }
}

graphics.long_handed_stack_inserter_open = {
  layers = {
    {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-open.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "long-handed-inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      tint = color.paint(23),
      hr_version = {
        filename =  xmx_image_inserter .. "long-handed-inserter/hr-long-handed-inserter-hand-open.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25,
        tint = color.paint(23)
      }
    }
  }
}

graphics.long_handed_stack_inserter_platform = {
  sheets = {
    {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version =
      {
        filename = "__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    },
    {
      filename = xmx_image_inserter .. "long-handed-inserter/long-handed-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename =  xmx_image_inserter .. "long-handed-inserter/hr-long-handed-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
}

-- Fast stack inserter --

graphics.fast_stack_inserter_base = {
  layers = {
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      tint = color.paint(24),
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25,
        tint = color.paint(24)
      }
    }
  }
}

graphics.fast_stack_inserter_closed = {
  layers = {
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      tint = color.paint(24),
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25,
        tint = color.paint(24)
      }
    }
  }
}

graphics.fast_stack_inserter_open = {
  layers = {
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      tint = color.paint(24),
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25,
        tint = color.paint(24)
      }
    }
  }
}

graphics.fast_stack_inserter_platform = {
  sheets = {
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-inserter/hr-stack-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
}

-- Fast stack filter inserter --

graphics.fast_stack_filter_inserter_base = {
  layers = {
    {
      filename = "__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-filter-inserter/hr-stack-filter-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      tint = color.paint(26),
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25,
        tint = color.paint(26)
      }
    }
  }
}

graphics.fast_stack_filter_inserter_closed = {
  layers = {
    {
      filename = "__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-filter-inserter/hr-stack-filter-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      tint = color.paint(26),
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25,
        tint = color.paint(26)
      }
    }
  }
}

graphics.fast_stack_filter_inserter_open = {
  layers = {
    {
      filename = "__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-filter-inserter/hr-stack-filter-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      tint = color.paint(26),
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25,
        tint = color.paint(26)
      }
    }
  }
}

graphics.fast_stack_filter_inserter_platform = {
  sheets = {
    {
      filename = "__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version =
      {
        filename = "__base__/graphics/entity/stack-filter-inserter/hr-stack-filter-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    },
    {
      filename = xmx_image_inserter .. "stack-inserter/stack-inserter-platform.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.09375, 0},
      hr_version = {
        filename =  xmx_image_inserter .. "stack-inserter/hr-stack-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    }
  }
}

return graphics
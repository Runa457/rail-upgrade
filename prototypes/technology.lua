data:extend({
  -- locomotive unlocks
  {
    type = "technology",
    name = "locomotive-light-1",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-light-a"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-upgrade-to-light-a"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-light-a"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-upgrade-to-light-a"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-light-a"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-upgrade-to-light-a"
      }
    },
    prerequisites = {"fluid-wagon"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = false
  },
  {
    type = "technology",
    name = "locomotive-light-2",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-light-b"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-upgrade-to-light-b"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-light-b"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-upgrade-to-light-b"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-light-b"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-upgrade-to-light-b"
      }
    },
    prerequisites = {"locomotive-light-1", "low-density-structure"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = false
  },
  {
    type = "technology",
    name = "locomotive-light-3",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-light-c"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-upgrade-to-light-c"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-light-c"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-upgrade-to-light-c"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-light-c"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-upgrade-to-light-c"
      }
    },
    prerequisites = {"locomotive-light-2", "utility-science-pack"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = false
  },
  {
    type = "technology",
    name = "locomotive-heavy-1",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-heavy-a"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-upgrade-to-heavy-a"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-heavy-a"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-upgrade-to-heavy-a"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-heavy-a"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-upgrade-to-heavy-a"
      }
    },
    prerequisites = {"fluid-wagon"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = false
  },
  {
    type = "technology",
    name = "locomotive-heavy-2",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-heavy-b"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-upgrade-to-heavy-b"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-heavy-b"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-upgrade-to-heavy-b"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-heavy-b"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-upgrade-to-heavy-b"
      }
    },
    prerequisites = {"locomotive-heavy-1", "low-density-structure"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = false
  },
  {
    type = "technology",
    name = "locomotive-heavy-3",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-heavy-c"
      },
      {
        type = "unlock-recipe",
        recipe = "locomotive-upgrade-to-heavy-c"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-heavy-c"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-upgrade-to-heavy-c"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-heavy-c"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-upgrade-to-heavy-c"
      }
    },
    prerequisites = {"locomotive-heavy-2", "utility-science-pack"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    upgrade = false
  },
  -- rail productivity
  {
    type = "technology",
    name = "rail-productivity-1",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "rail",
        change = 0.1
      }
    },
    prerequisites = {"railway"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "rail-productivity-2",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "rail",
        change = 0.1
      }
    },
    prerequisites = {"rail-productivity-1", "chemical-science-pack"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "rail-productivity-3",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "rail",
        change = 0.1
      }
    },
    prerequisites = {"rail-productivity-2", "production-science-pack"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "rail-productivity-4",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "rail",
        change = 0.1
      }
    },
    prerequisites = {"rail-productivity-3", "utility-science-pack"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "rail-productivity-5",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"),
    icon_size = 256,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "rail",
        change = 0.1
      }
    },
    prerequisites = {"rail-productivity-4", "space-science-pack"},
    unit =
    {
      count_formula = "1.5^(L-5)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  -- braking force
  {
    type = "technology",
    name = "braking-force-8",
    icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.15
      }
    },
    prerequisites = {"braking-force-7", "space-science-pack"},
    unit =
    {
      count_formula = "1.5^(L-8)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
})

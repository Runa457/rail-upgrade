data:extend({
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

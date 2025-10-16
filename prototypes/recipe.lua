data:extend({
-- locomotive
  -- light
  {
    type = "recipe",
    name = "locomotive-light-a",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "engine-unit", amount = 15},
      {type = "item", name = "electronic-circuit", amount = 7},
      {type = "item", name = "steel-plate", amount = 22}
    },
    results = {{type="item", name="locomotive-light-a", amount=1}}
  },
  {
    type = "recipe",
    name = "locomotive-light-b",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "engine-unit", amount = 10},
      {type = "item", name = "electronic-circuit", amount = 5},
      {type = "item", name = "steel-plate", amount = 15},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results = {{type="item", name="locomotive-light-b", amount=1}}
  },
  {
    type = "recipe",
    name = "locomotive-light-c",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 2},
      {type = "item", name = "steel-plate", amount = 7},
      {type = "item", name = "low-density-structure", amount = 10}
    },
    results = {{type="item", name="locomotive-light-c", amount=1}}
  },
  -- heavy
  {
    type = "recipe",
    name = "locomotive-heavy-a",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "engine-unit", amount = 25},
      {type = "item", name = "electronic-circuit", amount = 12},
      {type = "item", name = "steel-plate", amount = 37}
    },
    results = {{type="item", name="locomotive-heavy-a", amount=1}}
  },
  {
    type = "recipe",
    name = "locomotive-heavy-b",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "engine-unit", amount = 25},
      {type = "item", name = "electronic-circuit", amount = 12},
      {type = "item", name = "steel-plate", amount = 37},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results = {{type="item", name="locomotive-heavy-b", amount=1}}
  },
  {
    type = "recipe",
    name = "locomotive-heavy-c",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "engine-unit", amount = 30},
      {type = "item", name = "electronic-circuit", amount = 15},
      {type = "item", name = "steel-plate", amount = 45},
      {type = "item", name = "low-density-structure", amount = 10}
    },
    results = {{type="item", name="locomotive-heavy-c", amount=1}}
  },
})

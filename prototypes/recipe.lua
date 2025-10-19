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
  -- light-upgrade
  {
    type = "recipe",
    name = "locomotive-upgrade-to-light-a",
    icons = {
      {
        icon = "__base__/graphics/icons/locomotive.png"
      },
      {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0.25, g = 0.75, b = 0.25 },
        shift = {4, 4}
      }
    },
    subgroup = "train-transport-locomotive",
    order = "c[rolling-stock]-a[locomotive]-z[upgrade]-a1",
    energy_required = 16,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients =
    {
      {type = "item", name = "locomotive", amount = 1}
    },
    results =
    {
      {type = "item", name = "locomotive-light-a", amount = 1},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 3},
      {type = "item", name = "steel-plate", amount = 8}
    },
    main_product = "locomotive-light-a"
  },
  {
    type = "recipe",
    name = "locomotive-upgrade-to-light-b",
    icons = {
      {
        icon = "__rail-upgrade__/graphics/icons/lc_light1.png"
      },
      {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0.75, b = 0 },
        shift = {4, 4}
      }
    },
    subgroup = "train-transport-locomotive",
    order = "c[rolling-stock]-a[locomotive]-z[upgrade]-a2",
    energy_required = 16,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients =
    {
      {type = "item", name = "locomotive-light-a", amount = 1},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results =
    {
      {type = "item", name = "locomotive-light-b", amount = 1},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 2},
      {type = "item", name = "steel-plate", amount = 7}
    },
    main_product = "locomotive-light-b"
  },
  {
    type = "recipe",
    name = "locomotive-upgrade-to-light-c",
    icons = {
      {
        icon = "__rail-upgrade__/graphics/icons/lc_light1.png"
      },
      {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0.5, b = 0 },
        shift = {4, 4}
      }
    },
    subgroup = "train-transport-locomotive",
    order = "c[rolling-stock]-a[locomotive]-z[upgrade]-a3",
    energy_required = 16,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients =
    {
      {type = "item", name = "locomotive-light-b", amount = 1},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results =
    {
      {type = "item", name = "locomotive-light-c", amount = 1},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 3},
      {type = "item", name = "steel-plate", amount = 8}
    },
    main_product = "locomotive-light-c"
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
  -- heavy-upgrade
  {
    type = "recipe",
    name = "locomotive-upgrade-to-heavy-a",
    icons = {
      {
        icon = "__base__/graphics/icons/locomotive.png"
      },
      {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0.25, g = 0.25, b = 0.75 },
        shift = {4, 4}
      }
    },
    subgroup = "train-transport-locomotive",
    order = "c[rolling-stock]-a[locomotive]-z[upgrade]-b1",
    energy_required = 16,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients =
    {
      {type = "item", name = "locomotive", amount = 1},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 2},
      {type = "item", name = "steel-plate", amount = 7}
    },
    results = {{type="item", name="locomotive-heavy-a", amount=1}},
    main_product = "locomotive-heavy-a"
  },
  {
    type = "recipe",
    name = "locomotive-upgrade-to-heavy-b",
    icons = {
      {
        icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
      },
      {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0, b = 0.75 },
        shift = {4, 4}
      }
    },
    subgroup = "train-transport-locomotive",
    order = "c[rolling-stock]-a[locomotive]-z[upgrade]-b2",
    energy_required = 16,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients =
    {
      {type = "item", name = "locomotive-heavy-a", amount = 1},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results = {{type="item", name="locomotive-heavy-b", amount=1}},
    main_product = "locomotive-heavy-b"
  },
  {
    type = "recipe",
    name = "locomotive-upgrade-to-heavy-c",
    icons = {
      {
        icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
      },
      {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0, b = 0.5 },
        shift = {4, 4}
      }
    },
    subgroup = "train-transport-locomotive",
    order = "c[rolling-stock]-a[locomotive]-z[upgrade]-b3",
    energy_required = 16,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients =
    {
      {type = "item", name = "locomotive-heavy-b", amount = 1},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 3},
      {type = "item", name = "steel-plate", amount = 8},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results = {{type="item", name="locomotive-heavy-c", amount=1}},
    main_product = "locomotive-heavy-c"
  },
-- cargo-wagon
  -- light
  {
    type = "recipe",
    name = "cargo-wagon-light-a",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 7},
      {type = "item", name = "iron-plate", amount = 15},
      {type = "item", name = "steel-plate", amount = 15}
    },
    results = {{type="item", name="cargo-wagon-light-a", amount=1}}
  },
  {
    type = "recipe",
    name = "cargo-wagon-light-b",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 5},
      {type = "item", name = "iron-plate", amount = 10},
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results = {{type="item", name="cargo-wagon-light-b", amount=1}}
  },
  {
    type = "recipe",
    name = "cargo-wagon-light-c",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 2},
      {type = "item", name = "iron-plate", amount = 5},
      {type = "item", name = "steel-plate", amount = 5},
      {type = "item", name = "low-density-structure", amount = 10}
    },
    results = {{type="item", name="cargo-wagon-light-c", amount=1}}
  },
  -- heavy
  {
    type = "recipe",
    name = "cargo-wagon-heavy-a",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 12},
      {type = "item", name = "iron-plate", amount = 25},
      {type = "item", name = "steel-plate", amount = 25}
    },
    results = {{type="item", name="cargo-wagon-heavy-a", amount=1}}
  },
  {
    type = "recipe",
    name = "cargo-wagon-heavy-b",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 12},
      {type = "item", name = "iron-plate", amount = 25},
      {type = "item", name = "steel-plate", amount = 25},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    results = {{type="item", name="cargo-wagon-heavy-b", amount=1}}
  },
  {
    type = "recipe",
    name = "cargo-wagon-heavy-c",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 15},
      {type = "item", name = "iron-plate", amount = 30},
      {type = "item", name = "steel-plate", amount = 30},
      {type = "item", name = "low-density-structure", amount = 10}
    },
    results = {{type="item", name="cargo-wagon-heavy-c", amount=1}}
  }
-- fluid-wagon
})

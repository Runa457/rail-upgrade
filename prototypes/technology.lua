local function gen_effects(name)
    local effects = {
        {
            type = "unlock-recipe",
            recipe = "locomotive-" .. name
        },
        {
            type = "unlock-recipe",
            recipe = "locomotive-upgrade-to-" .. name
        },
        {
            type = "unlock-recipe",
            recipe = "cargo-wagon-" .. name
        },
        {
            type = "unlock-recipe",
            recipe = "cargo-wagon-upgrade-to-" .. name
        },
        {
            type = "unlock-recipe",
            recipe = "fluid-wagon-" .. name
        },
        {
            type = "unlock-recipe",
            recipe = "fluid-wagon-upgrade-to-" .. name
        }
    }
    return effects
end

local function gen_ingredients(pack_list)
    local pack = {
        "automation", "logistic", "military", "chemical", "production", "utility", "space",
        "metallurgic", "electromagnetic", "agricultural", "cryogenic", "promethium"
    }
    local ingredients = {}
    for _, idx in ipairs(pack_list) do
        local name = pack[idx]
        table.insert(ingredients, {name .. "-science-pack", 1})
    end
    return ingredients
end

local function gen_technology(item)
    local tech = {
        type = "technology",
        name = item.name,
        icon_size = 256,
        effects = item.effects,
        prerequisites = item.prerequisites,
        unit = {
            count = item.count,
            ingredients = gen_ingredients(item.pack_list),
            time = item.time
        },
        upgrade = item.upgrade
    }
    if item.icon then tech.icon = item.icon end
    if item.icons then tech.icons = item.icons end
    return tech
end

local rail_prod = {
    {
        type = "change-recipe-productivity",
        recipe = "rail",
        change = 0.1
    }
}

local items_tech = {
    -- locomotive
    light1 = {
        name = "locomotive-light-1", effects = gen_effects("light-a"),
        icon = "__base__/graphics/technology/braking-force.png", upgrade = false,
        prerequisites = {"fluid-wagon"},
        count = 150, pack_list = {1, 2}, time = 30
    },
    light2 = {
        name = "locomotive-light-2", effects = gen_effects("light-b"),
        icon = "__base__/graphics/technology/braking-force.png", upgrade = false,
        prerequisites = {"locomotive-light-1", "low-density-structure"},
        count = 250, pack_list = {1, 2, 4}, time = 30
    },
    light3 = {
        name = "locomotive-light-3", effects = gen_effects("light-c"),
        icon = "__base__/graphics/technology/braking-force.png", upgrade = false,
        prerequisites = {"locomotive-light-2", "utility-science-pack"},
        count = 500, pack_list = {1, 2, 4, 6}, time = 30
    },
    heavy1 = {
        name = "locomotive-heavy-1", effects = gen_effects("heavy-a"),
        icon = "__base__/graphics/technology/braking-force.png", upgrade = false,
        prerequisites = {"fluid-wagon"},
        count = 150, pack_list = {1, 2}, time = 30
    },
    heavy2 = {
        name = "locomotive-heavy-2", effects = gen_effects("heavy-b"),
        icon = "__base__/graphics/technology/braking-force.png", upgrade = false,
        prerequisites = {"locomotive-heavy-1", "low-density-structure"},
        count = 250, pack_list = {1, 2, 4}, time = 30
    },
    heavy3 = {
        name = "locomotive-heavy-3", effects = gen_effects("heavy-c"),
        icon = "__base__/graphics/technology/braking-force.png", upgrade = false,
        prerequisites = {"locomotive-heavy-2", "utility-science-pack"},
        count = 500, pack_list = {1, 2, 4, 6}, time = 30
    },
    -- rail productivity
    rail1 = {
        name = "rail-productivity-1", effects = rail_prod,
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"), upgrade = true,
        prerequisites = {"railway"},
        count = 100, pack_list = {1, 2}, time = 60
    },
    rail2 = {
        name = "rail-productivity-2", effects = rail_prod,
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"), upgrade = true,
        prerequisites = {"rail-productivity-1", "chemical-science-pack"},
        count = 250, pack_list = {1, 2, 4}, time = 60
    },
    rail3 = {
        name = "rail-productivity-3", effects = rail_prod,
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"), upgrade = true,
        prerequisites = {"rail-productivity-2", "production-science-pack"},
        count = 500, pack_list = {1, 2, 4, 5}, time = 60
    },
    rail4 = {
        name = "rail-productivity-4", effects = rail_prod,
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"), upgrade = true,
        prerequisites = {"rail-productivity-3", "utility-science-pack"},
        count = 750, pack_list = {1, 2, 4, 5, 6}, time = 60
    },
    rail5 = {
        name = "rail-productivity-5", effects = rail_prod,
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"), upgrade = true,
        prerequisites = {"rail-productivity-4", "space-science-pack"},
        count = 1000, pack_list = {1, 2, 4, 5, 6, 7}, time = 60
    }
}

local rail6 = {
    type = "technology",
    name = "rail-productivity-6",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/railway.png"),
    icon_size = 256,
    effects = rail_prod,
    prerequisites = {"rail-productivity-5"},
    unit =
    {
        count_formula = "1.5^(L-6)*1500",
        ingredients = gen_ingredients({1, 2, 4, 5, 6, 7}),
        time = 60
    },
    max_level = "infinite",
    upgrade = true
}

if mods["space-age"] then
    local rail_light = {
        type = "technology",
        name = "rail-light",
        icon = "__base__/graphics/technology/railway.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "rail-light"
            }
        },
        prerequisites = {},
        unit =
        {
            count = 1000,
            ingredients = gen_ingredients({1, 2, 4, 5, 7, 8, 10}),
            time = 30
        },
        upgrade = false
    }
    table.insert(rail_prod, { type = "change-recipe-productivity", recipe = "rail-light", change = 0.1 })

    if settings.startup["rail-upgrade-utility-pack-for-level3"].value then
        rail_light.prerequisites = {"locomotive-light-3", "locomotive-heavy-3", "carbon-fiber", "metallurgic-science-pack"}
    else
        items_tech.light3.prerequisites = {"locomotive-light-2", "carbon-fiber"}
        items_tech.light3.pack_list = {1, 2, 4, 7, 10}
        items_tech.heavy3.prerequisites = {"locomotive-heavy-2", "metallurgic-science-pack"}
        items_tech.heavy3.pack_list = {1, 2, 4, 7, 8}

        rail_light.prerequisites = {"locomotive-light-3", "locomotive-heavy-3"}
    end

    rail6.prerequisites = {"rail-productivity-5", "rail-light"}
    rail6.unit.ingredients = gen_ingredients({1, 2, 4, 5, 6, 7, 8, 10})

    data:extend({rail_light})
end

for _, item in pairs(items_tech) do
    data:extend({gen_technology(item)})
end
data:extend({rail6})

data:extend({
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
            ingredients = gen_ingredients({1, 2, 4, 5, 6, 7}),
            time = 60
        },
        max_level = "infinite",
        upgrade = true
    },
})

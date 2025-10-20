local function gen_ingredient_list(itemlist)
    local ingredients = {}
    if itemlist.engine and itemlist.engine > 0 then
        table.insert(ingredients, { type = "item", name = "engine-unit", amount = itemlist.engine })
    end
    if itemlist.electronic and itemlist.electronic > 0 then
        table.insert(ingredients, { type = "item", name = "electronic-circuit", amount = itemlist.electronic })
    end
    if itemlist.steel and itemlist.steel > 0 then
        table.insert(ingredients, { type = "item", name = "steel-plate", amount = itemlist.steel })
    end
    if itemlist.lds and itemlist.lds > 0 then
        table.insert(ingredients, { type = "item", name = "low-density-structure", amount = itemlist.lds })
    end
    if itemlist.gear and itemlist.gear > 0 then
        table.insert(ingredients, { type = "item", name = "iron-gear-wheel", amount = itemlist.gear })
    end
    if itemlist.iron and itemlist.iron > 0 then
        table.insert(ingredients, { type = "item", name = "iron-plate", amount = itemlist.iron })
    end
    if itemlist.pipe and itemlist.pipe > 0 then
        table.insert(ingredients, { type = "item", name = "pipe", amount = itemlist.pipe })
    end
    if itemlist.tank and itemlist.tank > 0 then
        table.insert(ingredients, { type = "item", name = "storage-tank", amount = itemlist.tank })
    end
    return ingredients
end

local function add_recipe(items)
    local recipe = {
        type = "recipe",
        name = items.type .. "-" .. items.name,
        energy_required = items.energy_required,
        enabled = false,
        ingredients = gen_ingredient_list(items.ingredients),
        results = { {type = "item", name = items.type .. "-" .. items.name, amount = 1} }
    }
    return recipe
end

local function ingredients_difference(high_level, low_level)
    local ingredients = {}
    local results = {}
    for key, item in pairs(high_level) do
        local value = high_level[key] - low_level[key]
        if value > 0 then
            ingredients[key] = value
        else
            results[key] = -value
        end
    end
    return ingredients, results
end

local function add_upgrade_recipe(items)
    local ingredients_list, results_list = ingredients_difference(items.high_level, items.low_level)
    local ingredients = gen_ingredient_list(ingredients_list)
    table.insert(ingredients, { type = "item", name = items.low_level_name, amount = 1 })
    local results = gen_ingredient_list(results_list)
    table.insert(results, { type = "item", name = items.type .. "-" .. items.name, amount = 1 })

    local recipe = {
        type = "recipe",
        name = items.type .. "-upgrade-to-" .. items.name,
        icons = items.icons,
        subgroup = "train-transport-" .. items.type,
        order = "c[rolling-stock]-" .. items.order,
        energy_required = items.energy_required,
        enabled = false,
        allow_decomposition = false,
        auto_recycle = false,
        ingredients = ingredients,
        results = results,
        main_product = items.type .. "-" .. items.name
    }
    return recipe
end

local items_recipe = {
    lc_la = { type = "locomotive", name = "light-a", energy_required = 4, ingredients = {engine = 15, electronic = 7, steel = 22, lds = 0} },
    lc_lb = { type = "locomotive", name = "light-b", energy_required = 4, ingredients = {engine = 10, electronic = 5, steel = 15, lds = 5} },
    lc_lc = { type = "locomotive", name = "light-c", energy_required = 4, ingredients = {engine = 5, electronic = 2, steel = 7, lds = 10} },
    lc_ha = { type = "locomotive", name = "heavy-a", energy_required = 4, ingredients = {engine = 25, electronic = 12, steel = 37, lds = 0} },
    lc_hb = { type = "locomotive", name = "heavy-b", energy_required = 4, ingredients = {engine = 25, electronic = 12, steel = 37, lds = 5} },
    lc_hc = { type = "locomotive", name = "heavy-c", energy_required = 4, ingredients = {engine = 30, electronic = 15, steel = 45, lds = 10} },

    cw_la = { type = "cargo-wagon", name = "light-a", energy_required = 1, ingredients = {gear = 7, iron = 15, steel = 15, lds = 0} },
    cw_lb = { type = "cargo-wagon", name = "light-b", energy_required = 1, ingredients = {gear = 5, iron = 10, steel = 10, lds = 5} },
    cw_lc = { type = "cargo-wagon", name = "light-c", energy_required = 1, ingredients = {gear = 2, iron = 5, steel = 5, lds = 10} },
    cw_ha = { type = "cargo-wagon", name = "heavy-a", energy_required = 1, ingredients = {gear = 12, iron = 25, steel = 25, lds = 0} },
    cw_hb = { type = "cargo-wagon", name = "heavy-b", energy_required = 1, ingredients = {gear = 12, iron = 25, steel = 25, lds = 5} },
    cw_hc = { type = "cargo-wagon", name = "heavy-c", energy_required = 1, ingredients = {gear = 15, iron = 30, steel = 30, lds = 10} },

    fw_la = { type = "fluid-wagon", name = "light-a", energy_required = 1.5, ingredients = {gear = 7, steel = 12, pipe = 6, tank = 1, lds = 0} },
    fw_lb = { type = "fluid-wagon", name = "light-b", energy_required = 1.5, ingredients = {gear = 5, steel = 8, pipe = 4, tank = 1, lds = 5} },
    fw_lc = { type = "fluid-wagon", name = "light-c", energy_required = 1.5, ingredients = {gear = 2, steel = 4, pipe = 2, tank = 1, lds = 10} },
    fw_ha = { type = "fluid-wagon", name = "heavy-a", energy_required = 1.5, ingredients = {gear = 12, steel = 20, pipe = 10, tank = 1, lds = 0} },
    fw_hb = { type = "fluid-wagon", name = "heavy-b", energy_required = 1.5, ingredients = {gear = 12, steel = 20, pipe = 10, tank = 1, lds = 5} },
    fw_hc = { type = "fluid-wagon", name = "heavy-c", energy_required = 1.5, ingredients = {gear = 15, steel = 24, pipe = 12, tank = 1, lds = 10} }
}

for _, item in pairs(items_recipe) do
    data:extend({add_recipe(item)})
end

local lc_org = { ingredients = {engine = 20, electronic = 10, steel = 30, lds = 0} }
local cw_org = { ingredients = {gear = 10, iron = 20, steel = 20, lds = 0} }
local fw_org = { ingredients = {gear = 10, steel = 16, pipe = 8, tank = 1, lds = 0} }

local icons = {
    green1 = {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0.25, g = 0.75, b = 0.25 },
        shift = {4, 4}
    },
    green2 = {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0.75, b = 0 },
        shift = {4, 4}
    },
    green3 = {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0.5, b = 0 },
        shift = {4, 4}
    },
    blue1 = {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0.25, g = 0.25, b = 0.75 },
        shift = {4, 4}
    },
    blue2 = {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0, b = 0.75 },
        shift = {4, 4}
    },
    blue3 = {
        icon = "__base__/graphics/icons/arrows/up-arrow.png",
        tint = { a = 0.75, r = 0, g = 0, b = 0.5 },
        shift = {4, 4}
    }
}

local items_upgrade_recipe = {
    -- locomotive upgrade
    {
        type = "locomotive", name = "light-a", order = "a[locomotive]-z[upgrade]-a1", energy_required = 16,
        icons = { { icon = "__base__/graphics/icons/locomotive.png" }, icons.green1 },
        high_level = items_recipe.lc_la.ingredients,
        low_level = lc_org.ingredients,
        low_level_name = "locomotive"
    },
    {
        type = "locomotive", name = "light-b", order = "a[locomotive]-z[upgrade]-a2", energy_required = 16,
        icons = { { icon = "__rail-upgrade__/graphics/icons/lc_light1.png" }, icons.green2 },
        high_level = items_recipe.lc_lb.ingredients,
        low_level = items_recipe.lc_la.ingredients,
        low_level_name = "locomotive-light-a"
    },
    {
        type = "locomotive", name = "light-c", order = "a[locomotive]-z[upgrade]-a3", energy_required = 16,
        icons = { { icon = "__rail-upgrade__/graphics/icons/lc_light1.png" }, icons.green3 },
        high_level = items_recipe.lc_lc.ingredients,
        low_level = items_recipe.lc_lb.ingredients,
        low_level_name = "locomotive-light-b"
    },
    {
        type = "locomotive", name = "heavy-a", order = "a[locomotive]-z[upgrade]-b1", energy_required = 16,
        icons = { { icon = "__base__/graphics/icons/locomotive.png" }, icons.blue1 },
        high_level = items_recipe.lc_ha.ingredients,
        low_level = lc_org.ingredients,
        low_level_name = "locomotive"
    },
    {
        type = "locomotive", name = "heavy-b", order = "a[locomotive]-z[upgrade]-b2", energy_required = 16,
        icons = { { icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png" }, icons.blue2 },
        high_level = items_recipe.lc_hb.ingredients,
        low_level = items_recipe.lc_ha.ingredients,
        low_level_name = "locomotive-heavy-a"
    },
    {
        type = "locomotive", name = "heavy-c", order = "a[locomotive]-z[upgrade]-b3", energy_required = 16,
        icons = { { icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png" }, icons.blue3 },
        high_level = items_recipe.lc_hc.ingredients,
        low_level = items_recipe.lc_hb.ingredients,
        low_level_name = "locomotive-heavy-b"
    },
    -- cargo wagon upgrade
    {
        type = "cargo-wagon", name = "light-a", order = "b[cargo-wagon]-z[upgrade]-a1", energy_required = 4,
        icons = { { icon = "__base__/graphics/icons/cargo-wagon.png" }, icons.green1 },
        high_level = items_recipe.cw_la.ingredients,
        low_level = cw_org.ingredients,
        low_level_name = "cargo-wagon"
    },
    {
        type = "cargo-wagon", name = "light-b", order = "b[cargo-wagon]-z[upgrade]-a2", energy_required = 4,
        icons = { { icon = "__rail-upgrade__/graphics/icons/cw_light1.png" }, icons.green2 },
        high_level = items_recipe.cw_lb.ingredients,
        low_level = items_recipe.cw_la.ingredients,
        low_level_name = "cargo-wagon-light-a"
    },
    {
        type = "cargo-wagon", name = "light-c", order = "b[cargo-wagon]-z[upgrade]-a3", energy_required = 4,
        icons = { { icon = "__rail-upgrade__/graphics/icons/cw_light1.png" }, icons.green3 },
        high_level = items_recipe.cw_lc.ingredients,
        low_level = items_recipe.cw_lb.ingredients,
        low_level_name = "cargo-wagon-light-b"
    },
    {
        type = "cargo-wagon", name = "heavy-a", order = "b[cargo-wagon]-z[upgrade]-b1", energy_required = 4,
        icons = { { icon = "__base__/graphics/icons/cargo-wagon.png" }, icons.blue1 },
        high_level = items_recipe.cw_ha.ingredients,
        low_level = cw_org.ingredients,
        low_level_name = "cargo-wagon"
    },
    {
        type = "cargo-wagon", name = "heavy-b", order = "b[cargo-wagon]-z[upgrade]-b2", energy_required = 4,
        icons = { { icon = "__rail-upgrade__/graphics/icons/cw_heavy1.png" }, icons.blue2 },
        high_level = items_recipe.cw_hb.ingredients,
        low_level = items_recipe.cw_ha.ingredients,
        low_level_name = "cargo-wagon-heavy-a"
    },
    {
        type = "cargo-wagon", name = "heavy-c", order = "b[cargo-wagon]-z[upgrade]-b3", energy_required = 4,
        icons = { { icon = "__rail-upgrade__/graphics/icons/cw_heavy1.png" }, icons.blue3 },
        high_level = items_recipe.cw_hc.ingredients,
        low_level = items_recipe.cw_hb.ingredients,
        low_level_name = "cargo-wagon-heavy-b"
    },
    -- fluid wagon upgrade
    {
        type = "fluid-wagon", name = "light-a", order = "c[fluid-wagon]-z[upgrade]-a1", energy_required = 6,
        icons = { { icon = "__base__/graphics/icons/fluid-wagon.png" }, icons.green1 },
        high_level = items_recipe.fw_la.ingredients,
        low_level = fw_org.ingredients,
        low_level_name = "fluid-wagon"
    },
    {
        type = "fluid-wagon", name = "light-b", order = "c[fluid-wagon]-z[upgrade]-a2", energy_required = 6,
        icons = { { icon = "__rail-upgrade__/graphics/icons/fw_light1.png" }, icons.green2 },
        high_level = items_recipe.fw_lb.ingredients,
        low_level = items_recipe.fw_la.ingredients,
        low_level_name = "fluid-wagon-light-a"
    },
    {
        type = "fluid-wagon", name = "light-c", order = "c[fluid-wagon]-z[upgrade]-a3", energy_required = 6,
        icons = { { icon = "__rail-upgrade__/graphics/icons/fw_light1.png" }, icons.green3 },
        high_level = items_recipe.fw_lc.ingredients,
        low_level = items_recipe.fw_lb.ingredients,
        low_level_name = "fluid-wagon-light-b"
    },
    {
        type = "fluid-wagon", name = "heavy-a", order = "c[fluid-wagon]-z[upgrade]-b1", energy_required = 6,
        icons = { { icon = "__base__/graphics/icons/fluid-wagon.png" }, icons.blue1 },
        high_level = items_recipe.fw_ha.ingredients,
        low_level = fw_org.ingredients,
        low_level_name = "fluid-wagon"
    },
    {
        type = "fluid-wagon", name = "heavy-b", order = "c[fluid-wagon]-z[upgrade]-b2", energy_required = 6,
        icons = { { icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png" }, icons.blue2 },
        high_level = items_recipe.fw_hb.ingredients,
        low_level = items_recipe.fw_ha.ingredients,
        low_level_name = "fluid-wagon-heavy-a"
    },
    {
        type = "fluid-wagon", name = "heavy-c", order = "c[fluid-wagon]-z[upgrade]-b3", energy_required = 6,
        icons = { { icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png" }, icons.blue3 },
        high_level = items_recipe.fw_hc.ingredients,
        low_level = items_recipe.fw_hb.ingredients,
        low_level_name = "fluid-wagon-heavy-b"
    }
}

for _, item in pairs(items_upgrade_recipe) do
    data:extend({add_upgrade_recipe(item)})
end

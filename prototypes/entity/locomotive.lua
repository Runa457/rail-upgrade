require('prototypes.entity.functions')

local function gen_Locomotive(items)
    local lc_proto = Rail_upgrade_gen_RollingStock(items, data.raw['locomotive']['locomotive'])

    lc_proto.max_power = items.max_power
    -- train.reversing_power_modifier = items.reversing

    return lc_proto
end

local items = {
    {
        name = 'locomotive-light-a',
        icon = "__rail-upgrade__/graphics/icons/lc_light1.png",
        max_health = 800,
        weight = 1500,
        friction_force = 0.25,
        shortname = "lc-light1",
        max_speed = 1.2,
        air_resistance = 0.0100,
        color = {r = 0.30, g = 0.92, b = 0.30, a = 1},
        max_power = "600kW"
    },
    {
        name = 'locomotive-light-b',
        icon = "__rail-upgrade__/graphics/icons/lc_light1.png",
        max_health = 800,
        weight = 1000,
        friction_force = 0.25,
        shortname = "lc-light2",
        max_speed = 1.2,
        air_resistance = 0.0100,
        color = {r = 0.00, g = 0.92, b = 0.00, a = 1},
        max_power = "600kW"
    },
    {
        name = 'locomotive-light-c',
        icon = "__rail-upgrade__/graphics/icons/lc_light1.png",
        max_health = 800,
        weight = 800,
        friction_force = 0.25,
        shortname = "lc-light3",
        max_speed = 1.2,
        air_resistance = 0.0100,
        color = {r = 0.00, g = 0.50, b = 0.00, a = 1},
        max_power = "700kW"
    },
    {
        name = 'locomotive-heavy-a',
        icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png",
        max_health = 1500,
        weight = 3000,
        friction_force = 0.75,
        shortname = "lc-heavy1",
        max_speed = 1.5,
        air_resistance = 0.0050,
        color = {r = 0.30, g = 0.30, b = 0.92, a = 1},
        max_power = "750kW"
    },
    {
        name = 'locomotive-heavy-b',
        icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png",
        max_health = 1500,
        weight = 4000,
        friction_force = 0.75,
        shortname = "lc-heavy2",
        max_speed = 1.8,
        air_resistance = 0.0050,
        color = {r = 0.00, g = 0.00, b = 0.92, a = 1},
        max_power = "900kW"
    },
    {
        name = 'locomotive-heavy-c',
        icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png",
        max_health = 1500,
        weight = 5000,
        friction_force = 0.75,
        shortname = "lc-heavy3",
        max_speed = 2.4,
        air_resistance = 0.0050,
        color = {r = 0.00, g = 0.00, b = 0.50, a = 1},
        max_power = "1.2MW"
    }
}

local lc_list = {}

for _, item in pairs(items) do
    table.insert(lc_list, gen_Locomotive(item))
end

if settings.startup["rail-upgrade-locomotive-no-fuel"].value then
    for _, lc in ipairs(lc_list) do
        lc.energy_source = { type = "void" }
    end
    data.raw['locomotive']['locomotive'].energy_source = { type = "void" }
end

local radar_chunk = settings.startup["rail-upgrade-locomotive-radar"].value
if radar_chunk > 0 then
    for _, lc in ipairs(lc_list) do
        lc.chunk_exploration_radius = radar_chunk
    end
    data.raw['locomotive']['locomotive'].chunk_exploration_radius = radar_chunk
end

data:extend(lc_list)
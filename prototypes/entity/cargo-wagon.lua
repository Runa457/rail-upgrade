require('prototypes.entity.functions')

local function gen_CargoWagon(items)
    local cw_proto = Rail_upgrade_gen_RollingStock(items, data.raw['cargo-wagon']['cargo-wagon'])

    cw_proto.inventory_size = items.inventory_size

    return cw_proto
end

local items = {
    {
        name = 'cargo-wagon-light-a',
        max_health = 450,
        weight = 800,
        friction_force = 0.25,
        shortname = "cw-light1",
        max_speed = 6.0,
        air_resistance = 0.015,
        color = {r = 0.43, g = 0.63, b = 0.23, a = 1},
        inventory_size = 40
    },
    {
        name = 'cargo-wagon-light-b',
        max_health = 450,
        weight = 500,
        friction_force = 0.25,
        shortname = "cw-light2",
        max_speed = 6.0,
        air_resistance = 0.015,
        color = {r = 0.23, g = 0.43, b = 0, a = 1},
        inventory_size = 30
    },
    {
        name = 'cargo-wagon-light-c',
        max_health = 450,
        weight = 400,
        friction_force = 0.25,
        shortname = "cw-light3",
        max_speed = 6.0,
        air_resistance = 0.015,
        color = {r = 0, g = 0.28, b = 0, a = 1},
        inventory_size = 30
    },
    {
        name = 'cargo-wagon-heavy-a',
        max_health = 750,
        weight = 1500,
        friction_force = 0.75,
        shortname = "cw-heavy1",
        max_speed = 6.0,
        air_resistance = 0.005,
        color = {r = 0.23, g = 0.43, b = 0.63, a = 1},
        inventory_size = 60
    },
    {
        name = 'cargo-wagon-heavy-b',
        max_health = 750,
        weight = 2000,
        friction_force = 0.75,
        shortname = "cw-heavy2",
        max_speed = 6.0,
        air_resistance = 0.005,
        color = {r = 0, g = 0.23, b = 0.43, a = 1},
        inventory_size = 80
    },
    {
        name = 'cargo-wagon-heavy-c',
        max_health = 750,
        weight = 2500,
        friction_force = 0.75,
        shortname = "cw-heavy3",
        max_speed = 6.0,
        air_resistance = 0.005,
        color = {r = 0, g = 0, b = 0.28, a = 1},
        inventory_size = 100
    }
}

local cw_list = {}

for _, item in pairs(items) do
    table.insert(cw_list, gen_CargoWagon(item))
end

data:extend(cw_list)

data.raw['cargo-wagon']['cargo-wagon'].max_speed = 6.0
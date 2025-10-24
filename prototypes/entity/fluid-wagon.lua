require('prototypes.entity.functions')

local function gen_FluidWagon(items)
    local fw_proto = Rail_upgrade_gen_RollingStock(items, data.raw['fluid-wagon']['fluid-wagon'])

    fw_proto.capacity = items.capacity

    return fw_proto
end

local items = {
    {
        name = 'fluid-wagon-light-a',
        icon = "__rail-upgrade__/graphics/icons/fw_light1.png",
        max_health = 450,
        weight = 800,
        friction_force = 0.25,
        shortname = "fw-light1",
        max_speed = 6.0,
        air_resistance = 0.015,
        color = {r = 0.43, g = 0.63, b = 0.23, a = 0.5},
        capacity = 50000
    },
    {
        name = 'fluid-wagon-light-b',
        icon = "__rail-upgrade__/graphics/icons/fw_light1.png",
        max_health = 450,
        weight = 500,
        friction_force = 0.25,
        shortname = "fw-light2",
        max_speed = 6.0,
        air_resistance = 0.015,
        color = {r = 0.23, g = 0.43, b = 0, a = 0.5},
        capacity = 37500
    },
    {
        name = 'fluid-wagon-light-c',
        icon = "__rail-upgrade__/graphics/icons/fw_light1.png",
        max_health = 450,
        weight = 400,
        friction_force = 0.25,
        shortname = "fw-light3",
        max_speed = 6.0,
        air_resistance = 0.015,
        color = {r = 0, g = 0.28, b = 0, a = 0.5},
        capacity = 37500
    },
    {
        name = 'fluid-wagon-heavy-a',
        icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png",
        max_health = 750,
        weight = 1500,
        friction_force = 0.75,
        shortname = "fw-heavy1",
        max_speed = 6.0,
        air_resistance = 0.005,
        color = {r = 0.23, g = 0.43, b = 0.63, a = 0.5},
        capacity = 75000
    },
    {
        name = 'fluid-wagon-heavy-b',
        icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png",
        max_health = 750,
        weight = 2000,
        friction_force = 0.75,
        shortname = "fw-heavy2",
        max_speed = 6.0,
        air_resistance = 0.005,
        color = {r = 0, g = 0.23, b = 0.43, a = 0.5},
        capacity = 100000
    },
    {
        name = 'fluid-wagon-heavy-c',
        icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png",
        max_health = 750,
        weight = 2500,
        friction_force = 0.75,
        shortname = "fw-heavy3",
        max_speed = 6.0,
        air_resistance = 0.005,
        color = {r = 0, g = 0, b = 0.28, a = 0.5},
        capacity = 125000
    }
}

local fw_list = {}

for _, item in pairs(items) do
    table.insert(fw_list, gen_FluidWagon(item))
end

data:extend(fw_list)

data.raw['fluid-wagon']['fluid-wagon'].max_speed = 6.0
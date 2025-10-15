local lc_light1 = table.deepcopy(data.raw['locomotive']['locomotive'])

lc_light1.name = 'locomotive-light-a'
lc_light1.minable.result = lc_light1.name
lc_light1.max_health = 800 -- default 1000

lc_light1.max_power = "600kW" -- default 600kW
lc_light1.reversing_power_modifier = 0.6 -- default 0.6

lc_light1.max_speed = 1.2 -- default 1.2
lc_light1.air_resistance = 0.0050 -- default 0.0075

lc_light1.weight = 1000 -- default 2000
lc_light1.braking_force = 10 -- default 10
lc_light1.friction_force = 0.25 -- default 0.50

lc_light1.color = {r = 0.96, g = 0.35, b = 0.30, a = 1} -- default {r = 0.92, g = 0.07, b = 0, a = 1}

lc_light1.resistances =
{
    { type = "fire", decrease = 15, percent = 50 },
    { type = "physical", decrease = 15, percent = 30 },
    { type = "impact", decrease = 50, percent = 60 },
    { type = "explosion", decrease = 15, percent = 30 },
    { type = "acid", decrease = 3, percent = 20 }
}

lc_light1.minimap_representation = {
    filename = "__rail-upgrade__/graphics/lc-light1-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
lc_light1.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/lc-light1-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

data:extend({ lc_light1 })
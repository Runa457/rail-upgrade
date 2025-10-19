-- light1

local lc_light1 = table.deepcopy(data.raw['locomotive']['locomotive'])

lc_light1.name = 'locomotive-light-a'
lc_light1.minable.result = lc_light1.name
lc_light1.max_health = 800 -- default 1000

lc_light1.max_power = "600kW" -- default 600kW
lc_light1.reversing_power_modifier = 0.6 -- default 0.6

lc_light1.max_speed = 1.2 -- default 1.2
lc_light1.air_resistance = 0.0100 -- default 0.0075

lc_light1.weight = 1500 -- default 2000
lc_light1.braking_force = 10 -- default 10
lc_light1.friction_force = 0.25 -- default 0.50

lc_light1.color = {r = 0.30, g = 0.92, b = 0.30, a = 1} -- default {r = 0.92, g = 0.07, b = 0, a = 1}

lc_light1.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-light1-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
lc_light1.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-light1-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- light2

local lc_light2 = table.deepcopy(data.raw['locomotive']['locomotive'])

lc_light2.name = 'locomotive-light-b'
lc_light2.minable.result = lc_light2.name
lc_light2.max_health = 800

lc_light2.max_power = "600kW"
lc_light2.reversing_power_modifier = 0.6

lc_light2.max_speed = 1.2
lc_light2.air_resistance = 0.0100

lc_light2.weight = 1000
lc_light2.braking_force = 10
lc_light2.friction_force = 0.25

lc_light2.color = {r = 0.00, g = 0.92, b = 0.00, a = 1}

lc_light2.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-light2-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
lc_light2.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-light2-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- light3

local lc_light3 = table.deepcopy(data.raw['locomotive']['locomotive'])

lc_light3.name = 'locomotive-light-c'
lc_light3.minable.result = lc_light3.name
lc_light3.max_health = 800

lc_light3.max_power = "700kW"
lc_light3.reversing_power_modifier = 0.6

lc_light3.max_speed = 1.2
lc_light3.air_resistance = 0.0100

lc_light3.weight = 800
lc_light3.braking_force = 10
lc_light3.friction_force = 0.25

lc_light3.color = {r = 0.00, g = 0.50, b = 0.00, a = 1}

lc_light3.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-light3-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
lc_light3.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-light3-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- heavy1

local lc_heavy1 = table.deepcopy(data.raw['locomotive']['locomotive'])

lc_heavy1.name = 'locomotive-heavy-a'
lc_heavy1.minable.result = lc_heavy1.name
lc_heavy1.max_health = 1500

lc_heavy1.max_power = "750kW"
lc_heavy1.reversing_power_modifier = 0.6

lc_heavy1.max_speed = 1.5
lc_heavy1.air_resistance = 0.0050

lc_heavy1.weight = 3000
lc_heavy1.braking_force = 10
lc_heavy1.friction_force = 0.75

lc_heavy1.color = {r = 0.30, g = 0.30, b = 0.92, a = 1}

lc_heavy1.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-heavy1-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
lc_heavy1.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-heavy1-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- heavy2

local lc_heavy2 = table.deepcopy(data.raw['locomotive']['locomotive'])

lc_heavy2.name = 'locomotive-heavy-b'
lc_heavy2.minable.result = lc_heavy2.name
lc_heavy2.max_health = 1500

lc_heavy2.max_power = "900kW"
lc_heavy2.reversing_power_modifier = 0.6

lc_heavy2.max_speed = 1.8
lc_heavy2.air_resistance = 0.0050

lc_heavy2.weight = 4000
lc_heavy2.braking_force = 10
lc_heavy2.friction_force = 0.75

lc_heavy2.color = {r = 0.00, g = 0.00, b = 0.92, a = 1}

lc_heavy2.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-heavy2-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
lc_heavy2.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-heavy2-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- heavy3

local lc_heavy3 = table.deepcopy(data.raw['locomotive']['locomotive'])

lc_heavy3.name = 'locomotive-heavy-c'
lc_heavy3.minable.result = lc_heavy3.name
lc_heavy3.max_health = 1500

lc_heavy3.max_power = "1.2MW"
lc_heavy3.reversing_power_modifier = 0.6

lc_heavy3.max_speed = 2.4
lc_heavy3.air_resistance = 0.0050

lc_heavy3.weight = 5000
lc_heavy3.braking_force = 10
lc_heavy3.friction_force = 0.75

lc_heavy3.color = {r = 0.00, g = 0.00, b = 0.50, a = 1}

lc_heavy3.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-heavy3-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
lc_heavy3.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/lc-heavy3-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

local lc_list = { lc_light1, lc_light2, lc_light3, lc_heavy1, lc_heavy2, lc_heavy3 }

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
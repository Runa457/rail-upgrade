-- light1

local cw_light1 = table.deepcopy(data.raw['cargo-wagon']['cargo-wagon'])

cw_light1.name = 'cargo-wagon-light-a'
cw_light1.minable.result = cw_light1.name
cw_light1.max_health = 450 -- default 600
cw_light1.inventory_size = 40 -- default 40

cw_light1.max_speed = 3.0 -- default 1.5
cw_light1.air_resistance = 0.015 -- default 0.01

cw_light1.weight = 800 -- default 1000
cw_light1.braking_force = 3 -- default 3
cw_light1.friction_force = 0.25 -- default 0.50

cw_light1.color = {r = 0.43, g = 0.63, b = 0.23, a = 1} -- default {r = 0.43, g = 0.23, b = 0, a = 1}

cw_light1.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-light1-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
cw_light1.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-light1-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- light2

local cw_light2 = table.deepcopy(data.raw['cargo-wagon']['cargo-wagon'])

cw_light2.name = 'cargo-wagon-light-b'
cw_light2.minable.result = cw_light2.name
cw_light2.max_health = 450
cw_light2.inventory_size = 30

cw_light2.max_speed = 3.0
cw_light2.air_resistance = 0.015

cw_light2.weight = 500
cw_light2.braking_force = 3
cw_light2.friction_force = 0.25

cw_light2.color = {r = 0.23, g = 0.43, b = 0, a = 1}

cw_light2.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-light2-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
cw_light2.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-light2-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- light3

local cw_light3 = table.deepcopy(data.raw['cargo-wagon']['cargo-wagon'])

cw_light3.name = 'cargo-wagon-light-c'
cw_light3.minable.result = cw_light3.name
cw_light3.max_health = 450
cw_light3.inventory_size = 30

cw_light3.max_speed = 3.0
cw_light3.air_resistance = 0.015

cw_light3.weight = 400
cw_light3.braking_force = 3
cw_light3.friction_force = 0.25

cw_light3.color = {r = 0, g = 0.28, b = 0, a = 1}

cw_light3.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-light3-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
cw_light3.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-light3-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- heavy1

local cw_heavy1 = table.deepcopy(data.raw['cargo-wagon']['cargo-wagon'])

cw_heavy1.name = 'cargo-wagon-heavy-a'
cw_heavy1.minable.result = cw_heavy1.name
cw_heavy1.max_health = 750
cw_heavy1.inventory_size = 60

cw_heavy1.max_speed = 3.0
cw_heavy1.air_resistance = 0.005

cw_heavy1.weight = 1500
cw_heavy1.braking_force = 3
cw_heavy1.friction_force = 0.75

cw_heavy1.color = {r = 0.23, g = 0.43, b = 0.63, a = 1}

cw_heavy1.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-heavy1-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
cw_heavy1.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-heavy1-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- heavy2

local cw_heavy2 = table.deepcopy(data.raw['cargo-wagon']['cargo-wagon'])

cw_heavy2.name = 'cargo-wagon-heavy-b'
cw_heavy2.minable.result = cw_heavy2.name
cw_heavy2.max_health = 750
cw_heavy2.inventory_size = 80

cw_heavy2.max_speed = 3.0
cw_heavy2.air_resistance = 0.005

cw_heavy2.weight = 2000
cw_heavy2.braking_force = 3
cw_heavy2.friction_force = 0.75

cw_heavy2.color = {r = 0, g = 0.23, b = 0.43, a = 1}

cw_heavy2.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-heavy2-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
cw_heavy2.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-heavy2-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

-- heavy3

local cw_heavy3 = table.deepcopy(data.raw['cargo-wagon']['cargo-wagon'])

cw_heavy3.name = 'cargo-wagon-heavy-c'
cw_heavy3.minable.result = cw_heavy3.name
cw_heavy3.max_health = 750
cw_heavy3.inventory_size = 100

cw_heavy3.max_speed = 3.0
cw_heavy3.air_resistance = 0.005

cw_heavy3.weight = 2500
cw_heavy3.braking_force = 3
cw_heavy3.friction_force = 0.75

cw_heavy3.color = {r = 0, g = 0, b = 0.28, a = 1}

cw_heavy3.minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-heavy3-minimap.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}
cw_heavy3.selected_minimap_representation = {
    filename = "__rail-upgrade__/graphics/minimap/cw-heavy3-selected.png",
    flags = {"icon"},
    size = {20, 40},
    scale = 0.5
}

data:extend({ cw_light1, cw_light2, cw_light3, cw_heavy1, cw_heavy2, cw_heavy3 })
function Rail_upgrade_gen_RollingStock(items, org_prototype)
    local new_rs = table.deepcopy(org_prototype)

-- PrototypeBase / EntityPrototype / EntityWithHealthPrototype properties
    new_rs.name = items.name
    new_rs.minable.result = items.name
    new_rs.icon = items.icon
    new_rs.max_health = items.max_health -- default 1000

-- VehiclePrototype properties
    new_rs.weight = items.weight -- default 2000
    -- train.braking_force = items.braking -- default 10
    new_rs.friction_force = items.friction_force -- default 0.50
    new_rs.minimap_representation.filename = "__rail-upgrade__/graphics/minimap/" .. items.shortname .. "-minimap.png"
    new_rs.selected_minimap_representation.filename = "__rail-upgrade__/graphics/minimap/" .. items.shortname .. "-selected.png"

-- RollingStockPrototype properties
    new_rs.max_speed = items.max_speed
    new_rs.air_resistance = items.air_resistance
    new_rs.color = items.color -- default {r = 0.92, g = 0.07, b = 0, a = 1}

    return new_rs
end
if mods["space-age"] then
    local straight_ground = table.deepcopy(data.raw['straight-rail']['straight-rail'])
    straight_ground.name = "straight-rail-light"
    straight_ground.icon = "__rail-upgrade__/graphics/icons/rail-light.png"

    local half_diag_ground = table.deepcopy(data.raw['half-diagonal-rail']['half-diagonal-rail'])
    half_diag_ground.name = "half-diagonal-rail-light"
    half_diag_ground.icon = "__rail-upgrade__/graphics/icons/half-diagonal-rail-light.png"

    local curved_a_ground = table.deepcopy(data.raw['curved-rail-a']['curved-rail-a'])
    curved_a_ground.name = "curved-rail-a-light"
    curved_a_ground.icon = "__rail-upgrade__/graphics/icons/curved-rail-light.png"
    
    local curved_b_ground = table.deepcopy(data.raw['curved-rail-b']['curved-rail-b'])
    curved_b_ground.name = "curved-rail-b-light"
    curved_b_ground.icon = "__rail-upgrade__/graphics/icons/curved-rail-b-light.png"

    local straight_elev = table.deepcopy(data.raw['elevated-straight-rail']['elevated-straight-rail'])
    straight_elev.name = "elevated-straight-rail-light"
    straight_elev.icon = "__rail-upgrade__/graphics/icons/elevated-rail-light.png"

    local half_diag_elev = table.deepcopy(data.raw['elevated-half-diagonal-rail']['elevated-half-diagonal-rail'])
    half_diag_elev.name = "elevated-half-diagonal-rail-light"
    half_diag_elev.icon = "__rail-upgrade__/graphics/icons/elevated-half-diagonal-rail-light.png"

    local curved_a_elev = table.deepcopy(data.raw['elevated-curved-rail-a']['elevated-curved-rail-a'])
    curved_a_elev.name = "elevated-curved-rail-a-light"
    curved_a_elev.icon = "__rail-upgrade__/graphics/icons/elevated-curved-rail-light.png"
    
    local curved_b_elev = table.deepcopy(data.raw['elevated-curved-rail-b']['elevated-curved-rail-b'])
    curved_b_elev.name = "elevated-curved-rail-b-light"
    curved_b_elev.icon = "__rail-upgrade__/graphics/icons/elevated-curved-rail-b-light.png"

    local light_rails = {straight_ground, half_diag_ground, curved_a_ground, curved_b_ground, straight_elev, half_diag_elev, curved_a_elev, curved_b_elev}

    for _, item in pairs(light_rails) do
        item.max_health = 500
        item.minable.mining_time = 0.1
        item.minable.result = "rail-light"
        item.placeable_by.item = "rail-light"
    end

    for _, item in pairs({straight_ground, half_diag_ground, curved_a_ground, curved_b_ground}) do
        for _, direction in pairs(item.pictures) do
            if direction.ties then
                direction.ties.filename = "__rail-upgrade__/graphics/rails/advanced-rail-ties.png"
            end
        end
    end

    for _, item in pairs({straight_elev, half_diag_elev, curved_a_elev, curved_b_elev}) do
        for _, direction in pairs(item.pictures) do
            if direction.stone_path and direction.stone_path.filename then
                direction.stone_path.filename = "__rail-upgrade__/graphics/rails/advanced-elevated-rail-base-top.png"
            end
        end
    end

    data:extend(light_rails)
    
    local rail_light_planner = table.deepcopy(data.raw["rail-planner"]["rail"])
    rail_light_planner.name = "rail-light"
    rail_light_planner.localised_name = {"item-name.rail-light"}
    rail_light_planner.icon = "__rail-upgrade__/graphics/icons/rail-light.png"
    rail_light_planner.order = "a[rail]-a[rail]-2"
    rail_light_planner.place_result = "straight-rail-light"
    rail_light_planner.stack_size = 500
    rail_light_planner.rails = {
        "straight-rail-light",
        "curved-rail-a-light",
        "curved-rail-b-light",
        "half-diagonal-rail-light",
        "elevated-straight-rail-light",
        "elevated-curved-rail-a-light",
        "elevated-curved-rail-b-light",
        "elevated-half-diagonal-rail-light",
        "rail-ramp",
    }
    rail_light_planner.support = "rail-support"

    data:extend({rail_light_planner})
end
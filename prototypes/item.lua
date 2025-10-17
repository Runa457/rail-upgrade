data:extend({
  {
    type = "item-subgroup",
    name = "train-transport-locomotive",
    group = "logistics",
    order = "e-a"
  },
  {
    type = "item-subgroup",
    name = "train-transport-cargo-wagon",
    group = "logistics",
    order = "e-b"
  },
  {
    type = "item-subgroup",
    name = "train-transport-fluid-wagon",
    group = "logistics",
    order = "e-c"
  },
})

-- locomotive

local lc_light1 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_light1.name = "locomotive-light-a"
lc_light1.icon = "__rail-upgrade__/graphics/icons/lc_light1.png"
lc_light1.subgroup = "train-transport-locomotive"
lc_light1.order = "c[rolling-stock]-a[locomotive]-a[light]-1"
lc_light1.place_result = lc_light1.name
lc_light1.stack_size = 20

local lc_light2 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_light2.name = "locomotive-light-b"
lc_light2.icon = "__rail-upgrade__/graphics/icons/lc_light1.png"
lc_light2.subgroup = "train-transport-locomotive"
lc_light2.order = "c[rolling-stock]-a[locomotive]-a[light]-2"
lc_light2.place_result = lc_light2.name
lc_light2.stack_size = 20

local lc_light3 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_light3.name = "locomotive-light-c"
lc_light3.icon = "__rail-upgrade__/graphics/icons/lc_light1.png"
lc_light3.subgroup = "train-transport-locomotive"
lc_light3.order = "c[rolling-stock]-a[locomotive]-a[light]-3"
lc_light3.place_result = lc_light3.name
lc_light3.stack_size = 20

local lc_heavy1 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_heavy1.name = "locomotive-heavy-a"
lc_heavy1.icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
lc_heavy1.subgroup = "train-transport-locomotive"
lc_heavy1.order = "c[rolling-stock]-a[locomotive]-b[heavy]-1"
lc_heavy1.place_result = lc_heavy1.name
lc_heavy1.stack_size = 20

local lc_heavy2 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_heavy2.name = "locomotive-heavy-b"
lc_heavy2.icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
lc_heavy2.subgroup = "train-transport-locomotive"
lc_heavy2.order = "c[rolling-stock]-a[locomotive]-b[heavy]-2"
lc_heavy2.place_result = lc_heavy2.name
lc_heavy2.stack_size = 20

local lc_heavy3 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_heavy3.name = "locomotive-heavy-c"
lc_heavy3.icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
lc_heavy3.subgroup = "train-transport-locomotive"
lc_heavy3.order = "c[rolling-stock]-a[locomotive]-b[heavy]-3"
lc_heavy3.place_result = lc_heavy3.name
lc_heavy3.stack_size = 20

data:extend({ lc_light1, lc_light2, lc_light3, lc_heavy1, lc_heavy2, lc_heavy3 })

local lc_org = data.raw["item-with-entity-data"]["locomotive"]
lc_org.stack_size = 20
lc_org.subgroup = "train-transport-locomotive"

-- cargo-wagon

local cw_light1 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_light1.name = "cargo-wagon-light-a"
cw_light1.icon = "__rail-upgrade__/graphics/icons/cw_light1.png"
cw_light1.subgroup = "train-transport-cargo-wagon"
cw_light1.order = "c[rolling-stock]-b[cargo-wagon]-a[light]-1"
cw_light1.place_result = cw_light1.name
cw_light1.stack_size = 40

local cw_light2 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_light2.name = "cargo-wagon-light-b"
cw_light2.icon = "__rail-upgrade__/graphics/icons/cw_light1.png"
cw_light2.subgroup = "train-transport-cargo-wagon"
cw_light2.order = "c[rolling-stock]-b[cargo-wagon]-a[light]-2"
cw_light2.place_result = cw_light2.name
cw_light2.stack_size = 40

local cw_light3 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_light3.name = "cargo-wagon-light-c"
cw_light3.icon = "__rail-upgrade__/graphics/icons/cw_light1.png"
cw_light3.subgroup = "train-transport-cargo-wagon"
cw_light3.order = "c[rolling-stock]-b[cargo-wagon]-a[light]-3"
cw_light3.place_result = cw_light3.name
cw_light3.stack_size = 40

data:extend({ cw_light1, cw_light2, cw_light3 })

local cw_org = data.raw["item-with-entity-data"]["cargo-wagon"]
cw_org.stack_size = 40
cw_org.subgroup = "train-transport-cargo-wagon"
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
lc_light1.order = "c[rolling-stock]-a[locomotive]-a[light]-1"
lc_light1.place_result = lc_light1.name

local lc_light2 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_light2.name = "locomotive-light-b"
lc_light2.icon = "__rail-upgrade__/graphics/icons/lc_light1.png"
lc_light2.order = "c[rolling-stock]-a[locomotive]-a[light]-2"
lc_light2.place_result = lc_light2.name

local lc_light3 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_light3.name = "locomotive-light-c"
lc_light3.icon = "__rail-upgrade__/graphics/icons/lc_light1.png"
lc_light3.order = "c[rolling-stock]-a[locomotive]-a[light]-3"
lc_light3.place_result = lc_light3.name

local lc_heavy1 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_heavy1.name = "locomotive-heavy-a"
lc_heavy1.icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
lc_heavy1.order = "c[rolling-stock]-a[locomotive]-b[heavy]-1"
lc_heavy1.place_result = lc_heavy1.name

local lc_heavy2 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_heavy2.name = "locomotive-heavy-b"
lc_heavy2.icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
lc_heavy2.order = "c[rolling-stock]-a[locomotive]-b[heavy]-2"
lc_heavy2.place_result = lc_heavy2.name

local lc_heavy3 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_heavy3.name = "locomotive-heavy-c"
lc_heavy3.icon = "__rail-upgrade__/graphics/icons/lc_heavy1.png"
lc_heavy3.order = "c[rolling-stock]-a[locomotive]-b[heavy]-3"
lc_heavy3.place_result = lc_heavy3.name

local lc_list = {lc_light1, lc_light2, lc_light3, lc_heavy1, lc_heavy2, lc_heavy3}
data:extend(lc_list)

local lc_org = data.raw["item-with-entity-data"]["locomotive"]
table.insert(lc_list, lc_org)

for _, item in pairs(lc_list) do
    item.stack_size = 20
    item.subgroup = "train-transport-locomotive"
end

-- cargo-wagon

local cw_light1 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_light1.name = "cargo-wagon-light-a"
cw_light1.icon = "__rail-upgrade__/graphics/icons/cw_light1.png"
cw_light1.order = "c[rolling-stock]-b[cargo-wagon]-a[light]-1"
cw_light1.place_result = cw_light1.name

local cw_light2 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_light2.name = "cargo-wagon-light-b"
cw_light2.icon = "__rail-upgrade__/graphics/icons/cw_light1.png"
cw_light2.order = "c[rolling-stock]-b[cargo-wagon]-a[light]-2"
cw_light2.place_result = cw_light2.name

local cw_light3 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_light3.name = "cargo-wagon-light-c"
cw_light3.icon = "__rail-upgrade__/graphics/icons/cw_light1.png"
cw_light3.order = "c[rolling-stock]-b[cargo-wagon]-a[light]-3"
cw_light3.place_result = cw_light3.name

local cw_heavy1 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_heavy1.name = "cargo-wagon-heavy-a"
cw_heavy1.icon = "__rail-upgrade__/graphics/icons/cw_heavy1.png"
cw_heavy1.order = "c[rolling-stock]-b[cargo-wagon]-b[heavy]-1"
cw_heavy1.place_result = cw_heavy1.name

local cw_heavy2 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_heavy2.name = "cargo-wagon-heavy-b"
cw_heavy2.icon = "__rail-upgrade__/graphics/icons/cw_heavy1.png"
cw_heavy2.order = "c[rolling-stock]-b[cargo-wagon]-b[heavy]-2"
cw_heavy2.place_result = cw_heavy2.name

local cw_heavy3 = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cw_heavy3.name = "cargo-wagon-heavy-c"
cw_heavy3.icon = "__rail-upgrade__/graphics/icons/cw_heavy1.png"
cw_heavy3.order = "c[rolling-stock]-b[cargo-wagon]-b[heavy]-3"
cw_heavy3.place_result = cw_heavy3.name

local cw_list = {cw_light1, cw_light2, cw_light3, cw_heavy1, cw_heavy2, cw_heavy3}
data:extend(cw_list)

local cw_org = data.raw["item-with-entity-data"]["cargo-wagon"]
table.insert(cw_list, cw_org)

for _, item in pairs(cw_list) do
    item.stack_size = 40
    item.subgroup = "train-transport-cargo-wagon"
end

-- fluid-wagon

local fw_light1 = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fw_light1.name = "fluid-wagon-light-a"
fw_light1.icon = "__rail-upgrade__/graphics/icons/fw_light1.png"
fw_light1.order = "c[rolling-stock]-c[fluid-wagon]-a[light]-1"
fw_light1.place_result = fw_light1.name

local fw_light2 = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fw_light2.name = "fluid-wagon-light-b"
fw_light2.icon = "__rail-upgrade__/graphics/icons/fw_light1.png"
fw_light2.order = "c[rolling-stock]-c[fluid-wagon]-a[light]-2"
fw_light2.place_result = fw_light2.name

local fw_light3 = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fw_light3.name = "fluid-wagon-light-c"
fw_light3.icon = "__rail-upgrade__/graphics/icons/fw_light1.png"
fw_light3.order = "c[rolling-stock]-c[fluid-wagon]-a[light]-3"
fw_light3.place_result = fw_light3.name

local fw_heavy1 = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fw_heavy1.name = "fluid-wagon-heavy-a"
fw_heavy1.icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png"
fw_heavy1.order = "c[rolling-stock]-c[fluid-wagon]-b[heavy]-1"
fw_heavy1.place_result = fw_heavy1.name

local fw_heavy2 = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fw_heavy2.name = "fluid-wagon-heavy-b"
fw_heavy2.icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png"
fw_heavy2.order = "c[rolling-stock]-c[fluid-wagon]-b[heavy]-2"
fw_heavy2.place_result = fw_heavy2.name

local fw_heavy3 = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fw_heavy3.name = "fluid-wagon-heavy-c"
fw_heavy3.icon = "__rail-upgrade__/graphics/icons/fw_heavy1.png"
fw_heavy3.order = "c[rolling-stock]-c[fluid-wagon]-b[heavy]-3"
fw_heavy3.place_result = fw_heavy3.name

local fw_list = {fw_light1, fw_light2, fw_light3, fw_heavy1, fw_heavy2, fw_heavy3}
data:extend(fw_list)

local fw_org = data.raw["item-with-entity-data"]["fluid-wagon"]
table.insert(fw_list, fw_org)

for _, item in pairs(fw_list) do
    item.stack_size = 40
    item.subgroup = "train-transport-fluid-wagon"
end
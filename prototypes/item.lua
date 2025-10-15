local lc_light1 = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
lc_light1.name = "locomotive-light-a"
lc_light1.order = "c[rolling-stock]-a[locomotive]-a[light]"
lc_light1.place_result = "locomotive-light-a"
lc_light1.stack_size = 20

data:extend({ lc_light1 })

data.raw["item-with-entity-data"]["locomotive"].stack_size = 20
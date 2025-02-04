local util = require("data-util")
--Add 248k science cubes to space tech as a ingrediant
util.replace_or_add_ingredient("utility-science-pack",nil, "fi_ki_science" , 1, false)
util.replace_or_add_ingredient("se-energy-science-pack-1",nil, "fu_ki_science" , 1, false)
--LDS 248k Recipe fix
util.replace_or_add_ingredient("fi_low-density-structure_recipe",nil, "titanium-plate" , 8, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe",nil, "diamond" , 4, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe",nil, "zirconia" , 20, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe",nil, "carbon-fiber" , 20, false)
--Adjust basic electronic components to require more ingredients
util.replace_or_add_ingredient("basic-electronic-components","copper-cable", "copper-cable" , 5, false)
util.replace_or_add_ingredient("basic-electronic-components","graphite", "graphite" , 5, false)
--Adjust Electronic circuits recipies to use less electronic components
util.replace_or_add_ingredient("electronic-circuit","basic-electronic-components", "basic-electronic-components" , 2, false)
util.replace_or_add_ingredient("electronic-circuit-silver","basic-electronic-components", "silver-wire" , 4, false)
--Add Mysterious energy crystals to Prod 1
util.replace_or_add_ingredient("productivity-module", "glass", "el_energy_crystal_item" , 10, false)
--Adjust Artificial energy crystals to be use more.
util.replace_or_add_ingredient("big-battery-equipment", nil, "fi_energy_crystal_item" , 4, false)
util.replace_or_add_ingredient("se-rtg-equipment", nil, "fi_energy_crystal_item" , 4, false)
util.replace_or_add_ingredient("big-solar-panel-equipment", nil, "fi_energy_crystal_item" , 4, false)
util.replace_or_add_ingredient("productivity-module-2", "glass", "fi_energy_crystal_item" , 10, false)
--Adjust Refined Crystals to be used more
util.replace_or_add_ingredient("productivity-module-3", "mlcc", "fu_materials_refined_crystal" , 4, false)
util.replace_or_add_ingredient("big-battery-mk2-equipment", nil, "fu_materials_refined_crystal" , 4, false)
util.replace_or_add_ingredient("big-imersite-solar-panel-equipment", nil, "fu_materials_refined_crystal" , 4, false)
--Adding Neodymium to some recipes
util.replace_or_add_ingredient("se-space-hypercooler", nil, "fi_materials_neodym" , 15, false)
util.replace_or_add_ingredient("se-space-radiator", nil, "fi_materials_neodym" , 15, false)
util.replace_or_add_ingredient("se-space-radiator-2", nil, "fi_materials_neodym" , 15, false)
--Change pcb solder(Bismuth) ingredients to solder(BZTIN) and adjust recipe and remove PCB-Solder
util.find_and_replace_ingredients({["pcb-solder"] = "solder"})
data.raw.recipe["pcb-solder"].localised_name = "Lead Free Solder"
util.replace_or_add_ingredient("pcb-solder", "tin-plate", "tin-plate" , 3, false)
util.replace_or_add_ingredient("pcb-solder", "bismuth-plate", "bismuth-plate" , 3, false)
data.raw.recipe["pcb-solder"].results = {{"solder", 6}, {type = "item", name = "silver-ore", amount = 1, catalyst_amount = 1, probability = 0.8}}
data.raw.recipe["pcb-solder"].main_product = "solder"
data.raw.technology["pcb-solder"].localised_name = "Lead Free Solder"
--data.raw.item["pcb-solder"] = nil
--Adjust steel recipe to cost lest to make 248k stell less worth it as it only takes the ore
util.replace_or_add_ingredient("steel-plate", "iron-plate", "iron-plate" , 10, false)
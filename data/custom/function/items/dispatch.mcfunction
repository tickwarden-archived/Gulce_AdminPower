execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{ap_item:"menu_wand"}] run function custom:menu
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{ap_item:"heal_wand"}] run function custom:util_heal_self
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{ap_item:"speed_wand"}] run function custom:speed_boost
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{ap_item:"tp_wand"}] run function custom:tp_to_nearest
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{ap_item:"freeze_wand"}] run function custom:items/toggle_freeze
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{ap_item:"lightning_wand"}] run function custom:cd/check_lt
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{ap_item:"command_wand"}] run function custom:macros/run_cmd with entity @s SelectedItem.components."minecraft:custom_data"
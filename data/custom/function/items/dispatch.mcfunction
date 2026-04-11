execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"menu_wand"}] run function custom:menu
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"heal_wand"}] run function custom:util_heal_self
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"speed_wand"}] run function custom:speed_boost
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"tp_wand"}] run function custom:tp_to_nearest
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"freeze_wand"}] run function custom:items/toggle_freeze
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"lightning_wand"}] run function custom:cd/check_lt
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"fireball_wand"}] run function custom:fireball
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"fly_wand"}] run function custom:fly
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"command_wand"}] run function custom:macros/run_cmd with entity @s selected_item.components."minecraft:custom_data"
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"vanish_wand"}] run function custom:exec/vanish_toggle
execute if items entity @s weapon.mainhand carrot_on_a_stick[minecraft:custom_data~{wand:"random_tp_wand"}] run function custom:exec/random_tp

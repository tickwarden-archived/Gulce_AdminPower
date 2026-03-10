# ════════════════════════════════════════════════
# custom:ame/toggle/keep_inv
# AME varken çağrılır — macro:flag ile toggle
# flag SET = keep_inventory AÇIK (normal logic)
# ════════════════════════════════════════════════
data modify storage macro:input key set value "ap_kinv_on"
function macro:flag/toggle with storage macro:input {}

# result:1b = flag AÇILDİ → keep_inventory AÇIK
execute if data storage macro:output {result:1b} run gamerule minecraft:keep_inventory true
execute if data storage macro:output {result:1b} run scoreboard players set #kinv_on ap_flags 1
execute if data storage macro:output {result:1b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🎒 Keep Inventory AÇILDİ","color":"green","bold":true}]
execute if data storage macro:output {result:1b} run playsound minecraft:block.chest.open master @a ~ ~ ~ 0.5 1.5

# result:0b = flag KALDIRILDI → keep_inventory KAPALI
execute if data storage macro:output {result:0b} run gamerule minecraft:keep_inventory false
execute if data storage macro:output {result:0b} run scoreboard players set #kinv_on ap_flags 0
execute if data storage macro:output {result:0b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🎒 Keep Inventory KAPATILDI","color":"red","bold":true}]
execute if data storage macro:output {result:0b} run playsound minecraft:block.chest.close master @a ~ ~ ~ 0.5 1.2

# ════════════════════════════════════════════════
# custom:ame/toggle/pvp
# AME varken çağrılır — macro:flag ile toggle
# Dikkat: flag SET = pvp KAPALI (inverted logic)
# ════════════════════════════════════════════════
data modify storage macro:input key set value "ap_pvp_off"
function macro:flag/toggle with storage macro:input {}

# result:1b = flag AÇILDİ → pvp KAPALI
execute if data storage macro:output {result:1b} run gamerule minecraft:pvp false
execute if data storage macro:output {result:1b} run scoreboard players set #pvp_on ap_flags 0
execute if data storage macro:output {result:1b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚔ PvP KAPATILDI","color":"red","bold":true}]
execute if data storage macro:output {result:1b} run playsound minecraft:block.shield.block master @a ~ ~ ~ 0.5 1.2

# result:0b = flag KALDIRILDI → pvp AÇIK
execute if data storage macro:output {result:0b} run gamerule minecraft:pvp true
execute if data storage macro:output {result:0b} run scoreboard players set #pvp_on ap_flags 1
execute if data storage macro:output {result:0b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚔ PvP AÇILDİ","color":"green","bold":true}]
execute if data storage macro:output {result:0b} run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 1.5

# ════════════════════════════════════════════════
# custom:ame/toggle/mob_spawn
# AME varken çağrılır — macro:flag ile toggle
# Dikkat: flag SET = mob spawn KAPALI (inverted logic)
# ════════════════════════════════════════════════
data modify storage macro:input key set value "ap_mob_spawn_off"
function macro:flag/toggle with storage macro:input {}

# result:1b = flag AÇILDİ → mob spawn KAPALI
execute if data storage macro:output {result:1b} run gamerule spawn_mobs false
execute if data storage macro:output {result:1b} run scoreboard players set #mob_spawn ap_flags 0
execute if data storage macro:output {result:1b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🐺 Mob üremesi KAPATILDI","color":"red","bold":true}]
execute if data storage macro:output {result:1b} run playsound minecraft:entity.wolf.whine master @a ~ ~ ~ 0.5 1

# result:0b = flag KALDIRILDI → mob spawn AÇIK
execute if data storage macro:output {result:0b} run gamerule spawn_mobs true
execute if data storage macro:output {result:0b} run scoreboard players set #mob_spawn ap_flags 1
execute if data storage macro:output {result:0b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🐺 Mob üremesi AÇILDİ","color":"green","bold":true}]
execute if data storage macro:output {result:0b} run playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 0.5 1

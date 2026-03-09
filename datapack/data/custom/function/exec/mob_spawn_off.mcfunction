gamerule doMobSpawning false
scoreboard players set $mob_spawn ap_flags 0
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🐺 Mob üremesi KAPATILDI","color":"red","bold":true}]
playsound minecraft:entity.wolf.whine master @a ~ ~ ~ 0.5 1

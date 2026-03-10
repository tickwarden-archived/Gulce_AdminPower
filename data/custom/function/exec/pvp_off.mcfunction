gamerule minecraft:pvp false
scoreboard players set #pvp_on ap_flags 0
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚔ PvP KAPATILDI","color":"red","bold":true}]
playsound minecraft:block.shield.block master @a ~ ~ ~ 0.5 1.2

gamerule minecraft:pvp true
scoreboard players set #pvp_on ap_flags 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚔ PvP AÇILDİ","color":"green","bold":true}]
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 1.5

scoreboard players set @s ap_cd_hl 200
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:regeneration 5 2 true
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
tellraw @s {"text":"[AdminPower] ❤️ İyileştirildi!","color":"red"}

# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_hl 200
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:regeneration 5 2 true
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
tellraw @s {"text":"[AdminPower] ❤️ İyileştirildi!","color":"red"}

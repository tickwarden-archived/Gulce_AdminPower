# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_iv 2400
effect give @s minecraft:resistance 300 255 true
effect give @s minecraft:regeneration 300 255 true
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.3 1.5
tellraw @s {"text":"[AdminPower] 😈 Tanrı modu aktif (15 sn)!","color":"dark_purple"}

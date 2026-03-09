# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_fd 200
effect give @s minecraft:saturation 4 3 true
playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 1
tellraw @s {"text":"[AdminPower] 🍖 Doyuruldu!","color":"green"}

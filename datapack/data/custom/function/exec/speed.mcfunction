# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_sp 600
effect give @s minecraft:speed 600 2 true
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 1.5
tellraw @s {"text":"[AdminPower] 💨 Hız artışı aktif (30 sn)!","color":"aqua"}

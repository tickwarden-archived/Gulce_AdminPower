# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_rl 1200
loot give @s loot minecraft:chests/simple_dungeon
playsound minecraft:block.chest.open master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🎁 Sürpriz sandık açıldı!","color":"gold"}

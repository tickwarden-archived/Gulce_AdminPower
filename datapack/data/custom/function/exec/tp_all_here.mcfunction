# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_ta 1200
execute at @s run tp @a ~ ~ ~
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
tellraw @a {"text":"[AdminPower] 🌀 Admin tüm oyuncuları yanına çekti!","color":"light_purple"}
execute if score $ame ap_flags matches 1 run function custom:ame/fire_event_tp

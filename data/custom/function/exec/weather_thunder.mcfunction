# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_wt 400
weather thunder 6000
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 0.8
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⛈ Fırtına başladı! (5dk)","color":"dark_aqua"}]

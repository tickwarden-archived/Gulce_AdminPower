# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_sa 600
execute as @a[tag=!ap.admin,tag=!ap.owner] at @s run summon minecraft:lightning_bolt ~ ~ ~
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚡ Gökten lanet indi!","color":"yellow","bold":true}]

# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_sn 200
function custom:util/tag_target
execute at @s run tp @a[tag=ap.cur_target,limit=1] ~ ~ ~
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" yanına çekildi!","color":"aqua"}]
tag @a remove ap.cur_target

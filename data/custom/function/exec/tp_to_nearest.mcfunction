scoreboard players set @s ap_cd_tp 200
function custom:util/tag_target
tp @s @a[tag=ap.cur_target,limit=1]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" konumuna ışınlandın!","color":"light_purple"}]
tag @a remove ap.cur_target

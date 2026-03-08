function custom:util/tag_target
scoreboard players add @a[tag=ap.cur_target,limit=1] ap_tokens 10
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🎁 "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" +10 token aldı!","color":"gold"}]
tag @a remove ap.cur_target

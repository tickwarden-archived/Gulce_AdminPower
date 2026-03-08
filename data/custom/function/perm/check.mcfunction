function custom:util/tag_target
execute store result score $perm_check ap_tmp \
  run scoreboard players get @a[tag=ap.cur_target,limit=1] ap_perm
tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"📋 "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" yetki seviyesi: ","color":"gray"},{"score":{"name":"$perm_check","objective":"ap_tmp"},"color":"yellow"},{"text":" (0=Yok 1=VIP 2=Mod 3=Admin 4=Sahip)","color":"dark_gray"}]
tag @a remove ap.cur_target

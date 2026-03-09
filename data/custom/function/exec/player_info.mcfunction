function custom:util/tag_target
execute store result score $pi_health ap_tmp run data get entity @a[tag=ap.cur_target,limit=1] Health 1
execute store result score $pi_perm ap_cd_mc run scoreboard players get @a[tag=ap.cur_target,limit=1] ap_perm
execute store result score $pi_tokens ap_flags run scoreboard players get @a[tag=ap.cur_target,limit=1] ap_tokens
tellraw @s ["",{"text":"═══[ Oyuncu Bilgisi ]═══","color":"gold","bold":true}]
tellraw @s ["",{"text":"📋 Hedef: ","color":"gray"},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow","bold":true}]
tellraw @s ["",{"text":"❤ Can: ","color":"red"},{"score":{"name":"$pi_health","objective":"ap_tmp"},"color":"green"},{"text":" / 20","color":"dark_gray"}]
tellraw @s ["",{"text":"🏅 Yetki: ","color":"aqua"},{"score":{"name":"$pi_perm","objective":"ap_cd_mc"},"color":"yellow"},{"text":" (0=Yok 1=VIP 2=Mod 3=Admin 4=Sahip)","color":"dark_gray"}]
tellraw @s ["",{"text":"💰 Token: ","color":"gold"},{"score":{"name":"$pi_tokens","objective":"ap_flags"},"color":"yellow"}]
tag @a remove ap.cur_target

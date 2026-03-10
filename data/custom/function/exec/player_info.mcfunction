function custom:util/tag_target
execute store result score $pi_health ap_tmp run data get entity @a[tag=ap.cur_target,limit=1] Health 1
execute store result score $pi_perm ap_tmp run scoreboard players get @a[tag=ap.cur_target,limit=1] ap_perm
execute store result score $pi_tokens ap_tmp run scoreboard players get @a[tag=ap.cur_target,limit=1] ap_tokens
execute store result score $pi_gm ap_tmp run data get entity @a[tag=ap.cur_target,limit=1] player_data.game_mode
tellraw @s ["",{"text":"═══[ Oyuncu Bilgisi ]═══","color":"gold","bold":true}]
tellraw @s ["",{"text":"📋 Hedef: ","color":"gray"},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow","bold":true}]
tellraw @s ["",{"text":"❤ Can: ","color":"red"},{"score":{"name":"$pi_health","objective":"ap_tmp"},"color":"green"},{"text":" / 20","color":"dark_gray"}]
tellraw @s ["",{"text":"🏅 Yetki: ","color":"aqua"},{"score":{"name":"$pi_perm","objective":"ap_tmp"},"color":"yellow"},{"text":" (0=Yok 1=VIP 2=Mod 3=Admin 4=Sahip)","color":"dark_gray"}]
tellraw @s ["",{"text":"💰 Token: ","color":"gold"},{"score":{"name":"$pi_tokens","objective":"ap_tmp"},"color":"yellow"}]
execute if score $pi_gm ap_tmp matches 0 run tellraw @s ["",{"text":"🎮 Mod: ","color":"gray"},{"text":"Hayatta Kalma","color":"green"}]
execute if score $pi_gm ap_tmp matches 1 run tellraw @s ["",{"text":"🎮 Mod: ","color":"gray"},{"text":"Yaratıcı","color":"aqua"}]
execute if score $pi_gm ap_tmp matches 2 run tellraw @s ["",{"text":"🎮 Mod: ","color":"gray"},{"text":"Macera","color":"yellow"}]
execute if score $pi_gm ap_tmp matches 3 run tellraw @s ["",{"text":"🎮 Mod: ","color":"gray"},{"text":"Gözlemci","color":"light_purple"}]
tag @a remove ap.cur_target

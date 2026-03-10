# ═══════════════════════════════════════════════════════════
# exec/bounce_player — En yakın oyuncuyu havaya fırlat
# Admin/owner hariç, 20 blok içindeki en yakın oyucuyu fırlatır.
# ═══════════════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_bnc 200

function custom:util/tag_target
execute as @a[tag=ap.cur_target,limit=1] run data modify entity @s delta_movement set value [0.0, 3.0, 0.0]
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 0.5
title @a[tag=ap.cur_target,limit=1] actionbar {"text":"🚀 FIRALATILDIN!","color":"light_purple","bold":true}
tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"🚀 "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" fırlatıldı!","color":"light_purple"}]
tag @a remove ap.cur_target

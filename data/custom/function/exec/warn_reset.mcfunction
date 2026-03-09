# Hedef oyuncunun uyarılarını sıfırla
function custom:util/tag_target
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_warns 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"✅ "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" uyarıları sıfırlandı.","color":"green"}]
tag @a remove ap.cur_target

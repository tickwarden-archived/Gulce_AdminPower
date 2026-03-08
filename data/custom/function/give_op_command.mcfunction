function custom:util/tag_target
# Vanilla'da /op komutu singleplayer'da çalışmaz.
# Bunun yerine en yakın oyuncuya tam admin paketi uygula:
#   • op tag (trigger sistemi erişimi)
#   • creative mod
#   • tüm cooldown sıfırla
#   • başlangıç admin araçları
execute as @a[tag=ap.cur_target,limit=1] run tag @s add op
execute as @a[tag=ap.cur_target,limit=1] run gamemode creative @s
execute as @a[tag=ap.cur_target,limit=1] run function custom:cd/reset_all
execute as @a[tag=ap.cur_target,limit=1] run function custom:exec/give_tools
execute as @a[tag=ap.cur_target,limit=1] run title @s times 10 60 20
execute as @a[tag=ap.cur_target,limit=1] run title @s title {"text":"ADMİN","color":"gold","bold":true}
execute as @a[tag=ap.cur_target,limit=1] run title @s subtitle {"text":"Tam yetki paketi verildi","color":"yellow"}
execute as @a[tag=ap.cur_target,limit=1] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"👑 En yakın oyuncuya admin paketi verildi (op tag + creative + araçlar)","color":"yellow"}]
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"Gerçek sunucu OP için konsoldan: ","color":"gray"},{"text":"/op <isim>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/op "}}]
tag @a remove ap.cur_target

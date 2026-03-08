function custom:util/tag_target
# En yakın oyuncuya vanilla admin yetkisi ver:
#   • op tag (trigger sistemi erişimi)
#   • creative mod
#   • tüm cooldown sıfırla
#   • scoreboard'da ap_admin = 1

execute as @a[tag=ap.cur_target,limit=1] run tag @s add op
execute as @a[tag=ap.cur_target,limit=1] run gamemode creative @s
execute as @a[tag=ap.cur_target,limit=1] run function custom:cd/reset_all
execute as @a[tag=ap.cur_target,limit=1] run scoreboard players set @s ap_admin 1
execute as @a[tag=ap.cur_target,limit=1] run title @s times 10 60 20
execute as @a[tag=ap.cur_target,limit=1] run title @s title {"text":"YETKİ VERİLDİ","color":"green","bold":true}
execute as @a[tag=ap.cur_target,limit=1] run title @s subtitle {"text":"op tag + creative + CD sıfırlandı","color":"gray"}
execute as @a[tag=ap.cur_target,limit=1] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"✅ En yakın oyuncuya yetki paketi verildi (op tag + creative + ap_admin)","color":"green"}]
tag @a remove ap.cur_target

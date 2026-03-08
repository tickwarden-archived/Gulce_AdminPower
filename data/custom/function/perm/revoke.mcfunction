function custom:util/tag_target
# Tüm yetkileri kaldır
execute as @a[tag=ap.cur_target,limit=1] run scoreboard players set @s ap_perm 0
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove op
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.owner
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.admin
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.mod
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.vip
execute as @a[tag=ap.cur_target,limit=1] run title @s times 10 60 20
execute as @a[tag=ap.cur_target,limit=1] run title @s title {"text":"🚫 YETKİ ALINDI","color":"dark_red","bold":true}
execute as @a[tag=ap.cur_target,limit=1] run title @s subtitle {"text":"Tüm yetkileriniz kaldırıldı","color":"red"}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🚫 "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"red"},{"text":" yetkisi kaldırıldı!","color":"dark_red"}]
tag @a remove ap.cur_target

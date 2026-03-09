function custom:util/tag_target
# Seviye 2 — Moderatör yetkisi

execute as @a[tag=ap.cur_target,limit=1] run tag @s add ap.mod
execute as @a[tag=ap.cur_target,limit=1] run tag @s add ap.vip
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove op
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.admin
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.owner

data modify storage custom:tmp level set value 2
data modify storage custom:tmp tag set value "ap.mod"
data modify storage custom:tmp mode set value "survival"
data modify storage custom:tmp title_text set value "🛡 MODERATÖR"
data modify storage custom:tmp title_color set value "blue"
data modify storage custom:tmp subtitle set value "ap.mod + ap.vip + survival"
execute as @a[tag=ap.cur_target,limit=1] run function custom:perm/apply with storage custom:tmp

tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🛡 "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"blue"},{"text":" Moderatör yetkisi aldı!","color":"gold"}]
tag @a remove ap.cur_target
execute if score $ame ap_flags matches 1 run function custom:ame/perm/sync

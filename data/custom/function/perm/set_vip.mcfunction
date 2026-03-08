function custom:util/tag_target
# Seviye 1 — VIP yetkisi

execute as @a[tag=ap.cur_target,limit=1] run tag @s add ap.vip
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove op
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.admin
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.mod
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.owner

data modify storage custom:tmp level set value 1
data modify storage custom:tmp tag set value "ap.vip"
data modify storage custom:tmp mode set value "survival"
data modify storage custom:tmp title_text set value "⭐ VIP"
data modify storage custom:tmp title_color set value "yellow"
data modify storage custom:tmp subtitle set value "ap.vip + survival"
execute as @a[tag=ap.cur_target,limit=1] run function custom:perm/apply with storage custom:tmp

tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⭐ "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" VIP yetkisi aldı!","color":"gold"}]
tag @a remove ap.cur_target

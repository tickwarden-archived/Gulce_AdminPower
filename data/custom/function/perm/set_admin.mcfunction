function custom:util/tag_target
# Seviye 3 — Admin yetkisi

execute as @a[tag=ap.cur_target,limit=1] run tag @s add op
execute as @a[tag=ap.cur_target,limit=1] run tag @s add ap.admin
execute as @a[tag=ap.cur_target,limit=1] run tag @s add ap.mod
execute as @a[tag=ap.cur_target,limit=1] run tag @s add ap.vip
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.owner

execute as @a[tag=ap.cur_target,limit=1] run function custom:items/give_all
execute as @a[tag=ap.cur_target,limit=1] run function custom:cd/reset_all

data modify storage custom:tmp level set value 3
data modify storage custom:tmp tag set value "ap.admin"
data modify storage custom:tmp mode set value "creative"
data modify storage custom:tmp title_text set value "⚙ ADMİN"
data modify storage custom:tmp title_color set value "red"
data modify storage custom:tmp subtitle set value "ap.admin + op + creative"
execute as @a[tag=ap.cur_target,limit=1] run function custom:perm/apply with storage custom:tmp

tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚙ "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"red"},{"text":" Admin yetkisi aldı!","color":"gold"}]
tag @a remove ap.cur_target
execute if score $ame ap_flags matches 1 run function custom:ame/perm/sync

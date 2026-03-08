# Seviye 2 — Moderatör yetkisi

execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s add ap.mod
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s add ap.vip
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove op
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove ap.admin
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove ap.owner

data modify storage custom:tmp level set value 2
data modify storage custom:tmp tag set value "ap.mod"
data modify storage custom:tmp mode set value "survival"
data modify storage custom:tmp title_text set value "🛡 MODERATÖR"
data modify storage custom:tmp title_color set value "blue"
data modify storage custom:tmp subtitle set value "ap.mod + ap.vip + survival"
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run function custom:perm/apply with storage custom:tmp

tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🛡 "},{"selector":"@e[type=player,sort=nearest,distance=0.1..,limit=1]","color":"blue"},{"text":" Moderatör yetkisi aldı!","color":"gold"}]

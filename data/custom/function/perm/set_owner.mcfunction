# Seviye 4 — Sahip yetkisi

execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s add op
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s add ap.admin
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s add ap.mod
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s add ap.vip
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s add ap.owner

execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run function custom:items/give_all
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run function custom:cd/reset_all

data modify storage custom:tmp level set value 4
data modify storage custom:tmp tag set value "ap.owner"
data modify storage custom:tmp mode set value "creative"
data modify storage custom:tmp title_text set value "👑 SAHİP"
data modify storage custom:tmp title_color set value "gold"
data modify storage custom:tmp subtitle set value "Tam yetki — ap.owner + op + creative"
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run function custom:perm/apply with storage custom:tmp

tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"👑 "},{"selector":"@e[type=player,sort=nearest,distance=0.1..,limit=1]","color":"gold"},{"text":" Sahip yetkisi aldı!","color":"gold"}]

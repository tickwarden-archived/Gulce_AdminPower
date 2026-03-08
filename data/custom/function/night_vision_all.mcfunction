# Toggle: ap.nv_all tag ile durum takibi
# Açık → kapat
execute if entity @s[tag=ap.nv_all] run effect clear @a minecraft:night_vision
execute if entity @s[tag=ap.nv_all] run tag @s remove ap.nv_all
execute if entity @s[tag=ap.nv_all] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.5 1
execute if entity @s[tag=ap.nv_all] run tellraw @a {"text":"[AdminPower] 👁 Tüm oyuncuların gece görüşü kapatıldı!","color":"gray"}
# Kapalı → aç
execute unless entity @s[tag=ap.nv_all] run effect give @a minecraft:night_vision 99999 0 true
execute unless entity @s[tag=ap.nv_all] run tag @s add ap.nv_all
execute unless entity @s[tag=ap.nv_all] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2
execute unless entity @s[tag=ap.nv_all] run tellraw @a {"text":"[AdminPower] 👁 Tüm oyuncular gece görebiliyor!","color":"aqua"}

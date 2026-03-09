# CD başlat
# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_fb 100
execute if score $ame ap_flags matches 1 run function custom:ame/fire_event_fb

# Oyuncu konumunu storage'a yaz
# HATA DÜZELTİLDİ: Eski sürümde Y ayak pozisyonuna (Pos[1]) çıkıyordu;
# fireball yere yakın çıkıp hemen patlıyordu.
# Düzeltme: Y = Pos[1] + 1.5 (göz seviyesi) için ap_tmp üzerinden hesaplanıyor.
execute store result storage custom:fb x double 0.001 run data get entity @s Pos[0] 1000
execute store result score @s ap_tmp run data get entity @s Pos[1] 1000
scoreboard players add @s ap_tmp 1500
execute store result storage custom:fb y double 0.001 run scoreboard players get @s ap_tmp
execute store result storage custom:fb z double 0.001 run data get entity @s Pos[2] 1000

# Yaw'ı ap_tmp'ye oku (float → int, -180..179)
# Minecraft yaw: 0=Güney +Z, 90=Batı -X, ±180=Kuzey -Z, -90=Doğu +X
execute store result score @s ap_tmp run data get entity @s Rotation[0] 1

# Güney (+Z): yaw -44..44
execute if score @s ap_tmp matches -44..44 run data modify storage custom:fb px set value 0.0d
execute if score @s ap_tmp matches -44..44 run data modify storage custom:fb py set value 0.0d
execute if score @s ap_tmp matches -44..44 run data modify storage custom:fb pz set value 1.0d
# Batı (-X): yaw 45..134
execute if score @s ap_tmp matches 45..134 run data modify storage custom:fb px set value -1.0d
execute if score @s ap_tmp matches 45..134 run data modify storage custom:fb py set value 0.0d
execute if score @s ap_tmp matches 45..134 run data modify storage custom:fb pz set value 0.0d
# Kuzey (-Z): yaw 135..179 veya -180..-135
execute if score @s ap_tmp matches 135..179 run data modify storage custom:fb px set value 0.0d
execute if score @s ap_tmp matches 135..179 run data modify storage custom:fb py set value 0.0d
execute if score @s ap_tmp matches 135..179 run data modify storage custom:fb pz set value -1.0d
execute if score @s ap_tmp matches -180..-135 run data modify storage custom:fb px set value 0.0d
execute if score @s ap_tmp matches -180..-135 run data modify storage custom:fb py set value 0.0d
execute if score @s ap_tmp matches -180..-135 run data modify storage custom:fb pz set value -1.0d
# Doğu (+X): yaw -134..-45
execute if score @s ap_tmp matches -134..-45 run data modify storage custom:fb px set value 1.0d
execute if score @s ap_tmp matches -134..-45 run data modify storage custom:fb py set value 0.0d
execute if score @s ap_tmp matches -134..-45 run data modify storage custom:fb pz set value 0.0d

function custom:macros/exec/fireball with storage custom:fb

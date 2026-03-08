# CD başlat
scoreboard players set @s ap_cd_lt 100

# BUG DÜZELTİLDİ: int 1 ile tam sayı koordinat alınıyordu,
# yıldırım blok merkezine düşüyordu. Düzeltme: double 0.001 ile gerçek konumu kullan.
data modify storage custom:tmp entity set value "minecraft:lightning_bolt"
execute store result storage custom:tmp x double 0.001 run data get entity @s Pos[0] 1000
execute store result storage custom:tmp y double 0.001 run data get entity @s Pos[1] 1000
execute store result storage custom:tmp z double 0.001 run data get entity @s Pos[2] 1000

# Macro ile lightning_bolt çağır
function custom:macros/world/summon_at with storage custom:tmp
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] ⚡ Yıldırım çağrıldı!","color":"yellow"}

# CD başlat
scoreboard players set @s ap_cd_lt 100

# Oyuncu konumunu storage'a yaz (integer blok pozisyonu)
data modify storage custom:tmp entity set value "minecraft:lightning_bolt"
execute store result storage custom:tmp x int 1 run data get entity @s Pos[0]
execute store result storage custom:tmp y int 1 run data get entity @s Pos[1]
execute store result storage custom:tmp z int 1 run data get entity @s Pos[2]

# Macro ile lightning_bolt çağır
function custom:macros/world/summon_at with storage custom:tmp

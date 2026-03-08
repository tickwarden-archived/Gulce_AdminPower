scoreboard players set @s ap_cd_ta 1200
execute at @s run tp @a ~ ~ ~
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
tellraw @a {"text":"[AdminPower] 🌀 Admin tüm oyuncuları yanına çekti!","color":"light_purple"}

scoreboard players set @s ap_cd_sn 200
execute at @s run tp @e[type=player,sort=nearest,distance=0.1..,limit=1] ~ ~ ~
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🧲 En yakın oyuncu yanına çekildi!","color":"aqua"}

scoreboard players set @s ap_cd_tp 200
tp @s @e[type=player,sort=nearest,distance=0.1..,limit=1]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🌀 En yakın oyuncuya ışınlandın!","color":"light_purple"}

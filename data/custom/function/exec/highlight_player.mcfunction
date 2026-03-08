effect give @e[type=player,sort=nearest,distance=0.1..,limit=1] minecraft:glowing 10 1 true
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 2
tellraw @s {"text":"[AdminPower] 👁 En yakın oyuncu 10 saniye boyunca parlıyor!","color":"aqua"}

# 5x5x5 alan içini hava ile doldur (bulunduğun konumdan -2~+2 blok)
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.5 1.5
tellraw @s {"text":"[AdminPower] 💨 5x5x5 alan temizlendi!","color":"yellow"}

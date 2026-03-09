kill @e[type=!player,distance=..30]
playsound minecraft:entity.generic.death master @a ~ ~ ~ 1 0.5
tellraw @a {"text":"[AdminPower] 💀 Yakındaki tüm varlıklar temizlendi (≤30 blok)!","color":"red"}

gamerule minecraft:keep_inventory false
scoreboard players set #kinv_on ap_flags 0
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🎒 Keep Inventory KAPATILDI","color":"red","bold":true}]
playsound minecraft:block.chest.close master @a ~ ~ ~ 0.5 1.2

gamerule minecraft:keep_inventory true
scoreboard players set #kinv_on ap_flags 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🎒 Keep Inventory AÇILDİ","color":"green","bold":true}]
playsound minecraft:block.chest.open master @a ~ ~ ~ 0.5 1.5

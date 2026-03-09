gamerule advance_time false
scoreboard players set #time_frozen ap_flags 1
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🕐 Zaman donduruldu!","color":"dark_aqua","bold":true},{"text":" (doDaylightCycle: off)","color":"dark_gray"}]

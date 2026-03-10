gamerule minecraft:advance_time true
scoreboard players set #time_frozen ap_flags 0
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🕐 Zaman serbest bırakıldı!","color":"aqua"},{"text":" (doDaylightCycle: on)","color":"dark_gray"}]

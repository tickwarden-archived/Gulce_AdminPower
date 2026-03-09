gamerule spawn_mobs true
scoreboard players set #mob_spawn ap_flags 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🐺 Mob üremesi AÇILDİ","color":"green","bold":true}]
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 0.5 1

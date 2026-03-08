scoreboard players set @s ap_cd_fz 1200
tag @a[gamemode=!spectator] add ap.freezed
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.5
tellraw @a {"text":"[AdminPower] ❄️ Tüm oyuncular donduruldu!","color":"aqua"}

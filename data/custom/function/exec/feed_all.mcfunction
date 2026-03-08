scoreboard players set @s ap_cd_fa 600
effect give @a minecraft:saturation 4 5 true
playsound minecraft:entity.player.burp master @a ~ ~ ~ 0.7 1
title @a times 5 40 10
title @a title {"text":"🍖 DOYURULDU","color":"green","bold":true}
title @a subtitle {"selector":"@s","color":"gold"}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🍖 ","color":"green"},{"selector":"@s","color":"yellow"},{"text":" tüm oyuncuları doyurdu!","color":"gray"}]

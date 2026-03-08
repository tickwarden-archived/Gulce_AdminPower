scoreboard players set @s ap_cd_ha 600
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:regeneration 5 2 true
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.7 1.5
title @a times 5 40 10
title @a title {"text":"❤ İYİLEŞTİRİLDİ","color":"red","bold":true}
title @a subtitle {"selector":"@s","color":"gold"}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"❤ ","color":"red"},{"selector":"@s","color":"yellow"},{"text":" tüm oyuncuları iyileştirdi!","color":"gray"}]

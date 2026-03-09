# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_ts 1200
execute as @a at @a run function custom:util_tp_spawn
title @a times 10 60 20
title @a title {"text":"🏠 SPAWN'A IŞINLANDI","color":"green","bold":true}
title @a subtitle {"selector":"@s","color":"gold"}
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🌍 ","color":"green"},{"selector":"@s","color":"yellow"},{"text":" tüm oyuncuları spawn'a ışınladı!","color":"gray"}]

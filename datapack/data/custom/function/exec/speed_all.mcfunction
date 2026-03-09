# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_sv 600
effect give @a minecraft:speed 600 2 true
title @a times 5 40 10
title @a title {"text":"💨 HIZ","color":"aqua","bold":true}
title @a subtitle {"selector":"@s","color":"gold"}
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.7 1.5
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"💨 ","color":"aqua"},{"selector":"@s","color":"yellow"},{"text":" tüm oyunculara hız verdi! (30sn)","color":"gray"}]

# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_gda 3600
effect give @a minecraft:resistance 300 255 true
effect give @a minecraft:regeneration 300 255 true
title @a times 5 50 10
title @a title {"text":"😈 TANRI MODU","color":"dark_purple","bold":true}
title @a subtitle {"selector":"@s","color":"gold"}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.4 1.5
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"😈 ","color":"dark_purple"},{"selector":"@s","color":"yellow"},{"text":" tüm oyunculara Tanrı Modu verdi! (15sn)","color":"gray"}]
execute if score $ame ap_flags matches 1 run function custom:ame/fire_event_god_all

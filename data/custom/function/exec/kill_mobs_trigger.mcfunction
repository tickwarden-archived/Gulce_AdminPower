# exec/kill_mobs_trigger — Tüm mobları öldür (dünya bazlı)
# CD — AME veya scoreboard
execute if score $ame ap_flags matches 1 run data modify storage custom:ame cd_op set value {key:"ap_cd_km", config_key:"kill_mobs"}
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_km 1200
kill @e[type=!player,type=!item_frame,type=!armor_stand,type=!falling_block,type=!area_effect_cloud,type=!item,type=!experience_orb]
playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.5 1.5
title @a times 5 30 10
title @a title {"text":"💀 MOB TEMİZLİK","color":"dark_red","bold":true}
title @a subtitle {"text":"Tüm canlılar yok edildi","color":"red"}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"💀 ","color":"dark_red"},{"selector":"@s","color":"yellow"},{"text":" tüm mobları öldürdü!","color":"gray"}]

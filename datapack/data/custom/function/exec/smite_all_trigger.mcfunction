# exec/smite_all_trigger — Herkese Yıldırım (admin/owner hariç)
execute if score $ame ap_flags matches 1 run data modify storage custom:ame cd_op set value {key:"ap_cd_sa", config_key:"smite"}
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_sa 600
execute as @a[tag=!ap.admin,tag=!ap.owner] at @s run summon minecraft:lightning_bolt ~ ~ ~
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
title @a times 5 30 10
title @a title {"text":"⚡ YILDIRIM","color":"yellow","bold":true}
title @a subtitle {"selector":"@s","color":"gold"}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚡ ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" gökten lanet indirdi!","color":"gray"}]

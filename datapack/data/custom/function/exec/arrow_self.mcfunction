# exec/arrow_self — Kendine ok (hasar testi)
execute if score $ame ap_flags matches 1 run data modify storage custom:ame cd_op set value {key:"ap_cd_ar", config_key:"arrow_self"}
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_ar 40
damage @s 4 minecraft:arrow
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🏹 Kendine 2 can hasar verildi!","color":"red"}]

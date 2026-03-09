# exec/starter_self — Starter Pack (kendine)
execute if score $ame ap_flags matches 1 run data modify storage custom:ame cd_op set value {key:"ap_cd_st", config_key:"starter"}
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_sst 12000
give @s minecraft:iron_sword
give @s minecraft:bread 16
give @s minecraft:torch 32
give @s minecraft:iron_pickaxe
give @s minecraft:iron_axe
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
title @s times 5 35 10
title @s title {"text":"🎒 STARTER PACK","color":"green","bold":true}
title @s subtitle {"text":"Başlangıç ekipmanı verildi!","color":"dark_green"}
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🎒 Başlangıç paketi verildi! (10dk CD)","color":"green"}]

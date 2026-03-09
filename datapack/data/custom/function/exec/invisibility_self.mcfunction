# ═══════════════════════════════════════════════════════════
# exec/invisibility_self — Görünmezlik Efekti (kendine)
# Trigger: /trigger ap_invisibility set 1
# ═══════════════════════════════════════════════════════════

# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_inv 1200

effect give @s minecraft:invisibility 600 0 true
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.5
title @s times 5 40 10
title @s title {"text":"🌟 GÖRÜNMEZLİK","color":"white","bold":true}
title @s subtitle {"text":"30 saniye görünmezsin","color":"gray"}
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🌟 Görünmezlik aktif! (30sn, 1dk CD)","color":"white"}]

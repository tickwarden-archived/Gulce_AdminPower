# ═══════════════════════════════════════════════════════════
# exec/fire_resist_self — Ateş Direnci Efekti (kendine)
# Trigger: /trigger ap_fire_resist set 1
# ═══════════════════════════════════════════════════════════

# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_fr 1200

effect give @s minecraft:fire_resistance 600 0 true
playsound minecraft:block.lava.pop master @s ~ ~ ~ 1 1.5
title @s times 5 40 10
title @s title {"text":"🔥 YANMAZ","color":"gold","bold":true}
title @s subtitle {"text":"30 saniye ateşten etkilenmezsin","color":"red"}
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🔥 Ateş direnci aktif! (30sn, 1dk CD)","color":"gold"}]

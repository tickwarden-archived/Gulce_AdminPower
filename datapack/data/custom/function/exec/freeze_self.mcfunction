# ═══════════════════════════════════════════════════════════
# exec/freeze_self — Kendini Dondur / Çöz (toggle)
# Dondurma: ap.freezed tag + tick'teki tp @s @s
# ═══════════════════════════════════════════════════════════

# Toggle: zaten donuksa → CD olmadan çöz ve return
execute if entity @s[tag=ap.freezed] run return run function custom:exec/unfreeze_self_apply

# Dondur — AME cd_op önceden set edilmeli, sonra ame/cd/set
execute if score $ame ap_flags matches 1 run data modify storage custom:ame cd_op set value {key:"ap_cd_frs", config_key:"freeze_self"}
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_frs 400

tag @s add ap.freezed
playsound minecraft:block.glass.place master @s ~ ~ ~ 1 2
title @s times 5 30 10
title @s title {"text":"🧊 DONDURULDU","color":"aqua","bold":true}
title @s subtitle {"text":"Tekrar tetikle → çözülür","color":"dark_aqua"}
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🧊 Kendini dondurdun! (tp @s @s aktif)","color":"aqua"}]

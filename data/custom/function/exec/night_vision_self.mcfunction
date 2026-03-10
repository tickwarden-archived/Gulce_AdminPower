# exec/night_vision_self — Kendine Gece Görüşü Toggle
execute if score $ame ap_flags matches 1 run data modify storage custom:ame cd_op set value {key:"ap_cd_nv", config_key:"night_vision"}
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_nv 0

# Toggle: zaten varsa kapat
execute if entity @s[tag=ap.nv_self] run return run function custom:exec/night_vision_off_self

# Aç
tag @s add ap.nv_self
effect give @s minecraft:night_vision infinite 0 true
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 2
title @s times 5 25 10
title @s title {"text":"👁 GECE GÖRÜŞÜ","color":"aqua","bold":true}
title @s subtitle {"text":"Tekrar tetikle → kapatır","color":"dark_aqua"}
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"👁 Gece görüşü AÇILDı!","color":"aqua"}]

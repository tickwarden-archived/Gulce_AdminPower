# exec/night_vision_off_self — Gece Görüşünü Kapat
tag @s remove ap.nv_self
effect clear @s minecraft:night_vision
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1
title @s times 5 25 10
title @s title {"text":"👁 KAPANDI","color":"gray","bold":true}
title @s subtitle {"text":"Gece görüşü kapatıldı","color":"dark_gray"}
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"👁 Gece görüşü kapatıldı.","color":"gray"}]

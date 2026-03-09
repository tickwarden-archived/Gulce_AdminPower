# exec/unfreeze_self_apply — Kendi dondurmasını çöz
# CD başlatılmaz (toggle'ın çözme kolu)
tag @s remove ap.freezed
playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1.5
title @s times 5 30 10
title @s title {"text":"🌊 ÇÖZÜLDÜ","color":"blue","bold":true}
title @s subtitle {"text":"Dondurma kaldırıldı","color":"dark_blue"}
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🌊 Kendi dondurman çözüldü!","color":"blue"}]

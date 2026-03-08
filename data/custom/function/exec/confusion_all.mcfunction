scoreboard players set @s ap_cd_ca 600
effect give @a[tag=!ap.admin,tag=!ap.owner] minecraft:nausea 8 2 true
title @a[tag=!ap.admin,tag=!ap.owner] times 5 50 10
title @a[tag=!ap.admin,tag=!ap.owner] title {"text":"🌀","color":"dark_purple","bold":true}
title @a[tag=!ap.admin,tag=!ap.owner] subtitle {"text":"Başın dönüyor...","color":"dark_purple"}
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.8 1
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🌀 Tüm oyunculara baş dönmesi uygulandı! (8sn)","color":"dark_purple"}]

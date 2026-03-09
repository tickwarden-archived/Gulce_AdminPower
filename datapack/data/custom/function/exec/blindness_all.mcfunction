# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_bl 400
effect give @a[tag=!ap.admin,tag=!ap.owner] minecraft:blindness 5 2 true
title @a[tag=!ap.admin,tag=!ap.owner] times 5 60 10
title @a[tag=!ap.admin,tag=!ap.owner] title {"text":"","color":"black"}
title @a[tag=!ap.admin,tag=!ap.owner] subtitle {"text":"👁 Karanlık!","color":"dark_red","bold":true}
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 0.5
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"👁 Tüm oyunculara körlük uygulandı! (5sn)","color":"dark_purple"}]

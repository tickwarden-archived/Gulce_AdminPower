# AME log'unu temizle
execute unless entity @s[tag=ap.admin,tag=!ap.owner] unless entity @s[tag=ap.owner] run return run tellraw @s {"text":"[AME] ❌ Yetki yok.","color":"red"}
function macro:log/clear
tellraw @s [{"text":"[AME] ","color":"aqua"},{"text":"Log temizlendi.","color":"green"}]

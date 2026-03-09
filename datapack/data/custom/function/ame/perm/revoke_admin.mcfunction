# Yetki geri al
tag @s remove ap.admin
tag @s remove macro.admin
execute if score @s ap_perm matches 3 run scoreboard players set @s ap_perm 0
tellraw @s [{"text":"[AdminPower × AME] ","color":"gold"},{"text":"Admin yetkisi kaldırıldı.","color":"red"}]

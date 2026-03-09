# custom:fire_resist_self — Ateş Direnci Efekti  |  ap_perm >= 2
execute unless score @s ap_perm matches 2.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için mod+ yetkisi gerekli.","color":"red"}]
execute if score $ame ap_flags matches 1 run function custom:ame/cd/check_fr
execute if score $ame ap_flags matches 0 run return run function custom:cd/scoreboard_check_fr

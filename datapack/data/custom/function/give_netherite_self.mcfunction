# custom:give_netherite_self — Kendine 16 Netherit Külçesi Ver  |  ap_perm >= 2
execute unless score @s ap_perm matches 2.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için mod+ yetkisi gerekli.","color":"red"}]
execute if score $ame ap_flags matches 1 run function custom:ame/cd/check_na
execute if score $ame ap_flags matches 0 run return run function custom:cd/scoreboard_check_na

# custom:kill_mobs_trigger  |  ap_perm >= 2
execute unless score @s ap_perm matches 2.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ mod+ yetkisi gerekli.","color":"red"}]
function custom:cd/check_km
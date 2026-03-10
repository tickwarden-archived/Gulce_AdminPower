# custom:invisibility_self — Görünmezlik Efekti  |  ap_perm >= 2
execute unless score @s ap_perm matches 2.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için mod+ yetkisi gerekli.","color":"red"}]
function custom:cd/check_inv
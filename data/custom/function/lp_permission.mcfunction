# lp_permission — En yakın oyuncuya admin yetkisi ver
# ap_admin scoreboard kaldırıldı, ap_perm=3 kullanılır
execute unless score @s ap_perm matches 4 run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için owner yetkisi gerekli.","color":"red"}]
function custom:perm/set_admin

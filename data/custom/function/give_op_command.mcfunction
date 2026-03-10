# give_op_command — En yakın oyuncuya admin yetkisi ver
# Geriye dönük uyumluluk: perm/set_admin'e yönlendirir
execute unless score @s ap_perm matches 4 run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için owner yetkisi gerekli.","color":"red"}]
function custom:perm/set_admin

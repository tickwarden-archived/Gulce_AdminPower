# Scoreboard CD Check (AME yokken): ap_cd_gto
execute if score @s ap_cd_gto matches 1.. run function custom:cd/busy_gto
execute if score @s ap_cd_gto matches ..0 run function custom:exec/give_totem

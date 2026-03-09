# Scoreboard CD Check (AME yokken): ap_cd_sa
execute if score @s ap_cd_sa matches 1.. run function custom:cd/busy_sa
execute if score @s ap_cd_sa matches ..0 run function custom:exec/smite_all

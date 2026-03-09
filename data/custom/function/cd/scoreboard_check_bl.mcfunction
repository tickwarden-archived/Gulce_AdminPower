# Scoreboard CD Check (AME yokken): ap_cd_bl
execute if score @s ap_cd_bl matches 1.. run function custom:cd/busy_bl
execute if score @s ap_cd_bl matches ..0 run function custom:exec/blindness_all

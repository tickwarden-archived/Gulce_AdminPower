# Scoreboard CD Check (AME yokken): ap_cd_ta
execute if score @s ap_cd_ta matches 1.. run function custom:cd/busy_ta
execute if score @s ap_cd_ta matches ..0 run function custom:exec/tp_all_here

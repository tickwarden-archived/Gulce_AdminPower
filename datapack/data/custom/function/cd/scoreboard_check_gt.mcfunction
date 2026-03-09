# Scoreboard CD Check (AME yokken): ap_cd_gt
execute if score @s ap_cd_gt matches 1.. run function custom:cd/busy_gt
execute if score @s ap_cd_gt matches ..0 run function custom:exec/give_tools

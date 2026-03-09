# Scoreboard CD Check (AME yokken): ap_cd_lt
execute if score @s ap_cd_lt matches 1.. run function custom:cd/busy_lt
execute if score @s ap_cd_lt matches ..0 run function custom:exec/lightning

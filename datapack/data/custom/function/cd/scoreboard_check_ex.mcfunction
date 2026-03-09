# Scoreboard CD Check (AME yokken): ap_cd_ex
execute if score @s ap_cd_ex matches 1.. run function custom:cd/busy_ex
execute if score @s ap_cd_ex matches ..0 run function custom:exec/explosion

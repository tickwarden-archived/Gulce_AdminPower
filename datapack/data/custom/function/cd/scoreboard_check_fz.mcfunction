# Scoreboard CD Check (AME yokken): ap_cd_fz
execute if score @s ap_cd_fz matches 1.. run function custom:cd/busy_fz
execute if score @s ap_cd_fz matches ..0 run function custom:exec/freeze_all

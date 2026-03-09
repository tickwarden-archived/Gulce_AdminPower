# Scoreboard CD Check (AME yokken): ap_cd_bc
execute if score @s ap_cd_bc matches 1.. run function custom:cd/busy_bc
execute if score @s ap_cd_bc matches ..0 run function custom:exec/broadcast

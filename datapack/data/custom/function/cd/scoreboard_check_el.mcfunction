# Scoreboard CD Check (AME yokken): ap_cd_el
execute if score @s ap_cd_el matches 1.. run function custom:cd/busy_el
execute if score @s ap_cd_el matches ..0 run function custom:exec/elytra

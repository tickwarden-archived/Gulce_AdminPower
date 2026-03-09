# Scoreboard CD Check (AME yokken): ap_cd_hl
execute if score @s ap_cd_hl matches 1.. run function custom:cd/busy_hl
execute if score @s ap_cd_hl matches ..0 run function custom:exec/heal

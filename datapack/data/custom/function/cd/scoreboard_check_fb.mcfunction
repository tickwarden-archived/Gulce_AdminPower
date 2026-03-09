# Scoreboard CD Check (AME yokken): ap_cd_fb
execute if score @s ap_cd_fb matches 1.. run function custom:cd/busy_fb
execute if score @s ap_cd_fb matches ..0 run function custom:exec/fireball

# Scoreboard CD Check (AME yokken): ap_cd_xp
execute if score @s ap_cd_xp matches 1.. run function custom:cd/busy_xp
execute if score @s ap_cd_xp matches ..0 run function custom:exec/give_xp

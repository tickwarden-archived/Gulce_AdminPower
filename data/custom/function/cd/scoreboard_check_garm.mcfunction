# Scoreboard CD Check (AME yokken): ap_cd_garm
execute if score @s ap_cd_garm matches 1.. run function custom:cd/busy_garm
execute if score @s ap_cd_garm matches ..0 run function custom:exec/give_armor

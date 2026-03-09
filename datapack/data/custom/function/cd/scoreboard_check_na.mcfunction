# Scoreboard CD Check (AME yokken): ap_cd_na
execute if score @s ap_cd_na matches 1.. run function custom:cd/busy_na
execute if score @s ap_cd_na matches ..0 run function custom:exec/give_netherite

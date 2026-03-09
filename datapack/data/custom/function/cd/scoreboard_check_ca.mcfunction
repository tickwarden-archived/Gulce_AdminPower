# Scoreboard CD Check (AME yokken): ap_cd_ca
execute if score @s ap_cd_ca matches 1.. run function custom:cd/busy_ca
execute if score @s ap_cd_ca matches ..0 run function custom:exec/confusion_all

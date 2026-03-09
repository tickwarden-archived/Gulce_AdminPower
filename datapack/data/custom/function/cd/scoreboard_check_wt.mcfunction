# Scoreboard CD Check (AME yokken): ap_cd_wt
execute if score @s ap_cd_wt matches 1.. run function custom:cd/busy_wt
execute if score @s ap_cd_wt matches ..0 run function custom:exec/weather_thunder

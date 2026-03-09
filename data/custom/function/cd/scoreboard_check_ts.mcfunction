# Scoreboard CD Check (AME yokken): ap_cd_ts
execute if score @s ap_cd_ts matches 1.. run function custom:cd/busy_ts
execute if score @s ap_cd_ts matches ..0 run function custom:exec/tp_spawn_all

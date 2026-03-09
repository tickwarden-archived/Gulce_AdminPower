# Scoreboard CD Check (AME yokken): ap_cd_fd
execute if score @s ap_cd_fd matches 1.. run function custom:cd/busy_fd
execute if score @s ap_cd_fd matches ..0 run function custom:exec/feed

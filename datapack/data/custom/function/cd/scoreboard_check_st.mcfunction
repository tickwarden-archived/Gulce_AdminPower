# Scoreboard CD Check (AME yokken): ap_cd_st
execute if score @s ap_cd_st matches 1.. run function custom:cd/busy_st
execute if score @s ap_cd_st matches ..0 run function custom:exec/starter

execute if score @s ap_cd_frs matches 1.. run function custom:cd/busy_frs
execute if score @s ap_cd_frs matches ..0 run function custom:exec/freeze_self

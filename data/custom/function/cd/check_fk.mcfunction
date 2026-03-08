execute if score @s ap_cd_fk matches 1.. run function custom:cd/busy_fk
execute if score @s ap_cd_fk matches ..0 run function custom:exec/fake_death

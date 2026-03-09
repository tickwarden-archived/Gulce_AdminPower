function custom:util/tag_target
# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_fk 400
execute as @a[tag=ap.cur_target,limit=1] run function custom:exec/fake_death_apply
tag @a remove ap.cur_target

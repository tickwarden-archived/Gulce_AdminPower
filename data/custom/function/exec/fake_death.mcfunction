function custom:util/tag_target
scoreboard players set @s ap_cd_fk 400
execute as @a[tag=ap.cur_target,limit=1] run function custom:exec/fake_death_apply
tag @a remove ap.cur_target

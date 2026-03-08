scoreboard players set @s ap_cd_ex 600
execute if score $ame ap_flags matches 1 run function custom:ame/fire_event_ex
summon minecraft:tnt ~ ~ ~ {Fuse:0}
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
tellraw @a {"text":"[AdminPower] 💣 BOOM! Patlama!","color":"dark_red"}

# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_xp 1200
xp add @s 1000 points
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] ⭐ 1000 XP verildi!","color":"yellow"}

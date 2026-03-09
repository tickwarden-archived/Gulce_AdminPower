# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_dm 2400
give @s minecraft:diamond 64
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
tellraw @s {"text":"[AdminPower] 💎 64 Elmas verildi!","color":"aqua"}

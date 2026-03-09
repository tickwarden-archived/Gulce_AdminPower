# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_gto 2400
give @s minecraft:totem_of_undying 3
playsound minecraft:entity.totem.use master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🔮 3x Ölümsüzlük Totemi verildi!","color":"gold"}

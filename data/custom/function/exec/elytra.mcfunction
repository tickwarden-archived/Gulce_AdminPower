# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_el 6000
give @s minecraft:elytra
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🦋 Elytra verildi!","color":"light_purple"}

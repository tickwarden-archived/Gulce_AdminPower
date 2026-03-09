# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_na 6000
give @s minecraft:netherite_ingot 16
playsound minecraft:block.netherite_block.place master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🔱 16 Netherit Külçesi verildi! (5dk CD)","color":"dark_purple"}

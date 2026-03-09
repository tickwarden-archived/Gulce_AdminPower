# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_rp 400
item modify entity @s weapon.mainhand custom:repair_hand
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🔧 Eldeki eşya tamir edildi!","color":"green"}

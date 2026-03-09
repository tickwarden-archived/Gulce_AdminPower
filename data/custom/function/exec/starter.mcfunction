# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_st 12000
give @s minecraft:iron_sword
give @s minecraft:bread 16
give @s minecraft:torch 32
give @s minecraft:iron_pickaxe
give @s minecraft:iron_axe
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🎒 Başlangıç paketi verildi!","color":"green"}

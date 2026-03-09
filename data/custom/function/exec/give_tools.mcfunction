# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_gt 600
give @s diamond_pickaxe[minecraft:custom_name={text:"Admin Kazma",color:"aqua",bold:true},minecraft:enchantments={"minecraft:efficiency":5,"minecraft:unbreaking":3,"minecraft:mending":1}]
give @s diamond_sword[minecraft:custom_name={text:"Admin Kılıcı",color:"red",bold:true},minecraft:enchantments={"minecraft:sharpness":5,"minecraft:unbreaking":3,"minecraft:mending":1}]
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🔧 Admin araçları verildi!","color":"light_purple"}

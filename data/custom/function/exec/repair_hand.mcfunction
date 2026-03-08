scoreboard players set @s ap_cd_rp 400
item modify entity @s weapon.mainhand custom:repair_hand
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] 🔧 Eldeki eşya tamir edildi!","color":"green"}

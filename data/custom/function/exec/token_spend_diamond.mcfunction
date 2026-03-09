execute if score @s ap_tokens matches 15.. run give @s minecraft:diamond 16
execute if score @s ap_tokens matches 15.. run scoreboard players remove @s ap_tokens 15
execute if score @s ap_tokens matches 15.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score @s ap_tokens matches 15.. run tellraw @s [{"text":"[AdminPower] 💎 -15 Token: 16 Elmas! Kalan: ","color":"aqua"},{"score":{"name":"@s","objective":"ap_tokens"},"color":"yellow"},{"text":" 🪙","color":"gold"}]
execute unless score @s ap_tokens matches 15.. run tellraw @s {"text":"[AdminPower] ❌ Yetersiz token! (15 gerekli)","color":"red"}

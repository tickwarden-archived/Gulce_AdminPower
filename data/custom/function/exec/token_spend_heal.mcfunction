execute if score @s ap_tokens matches 5.. run effect give @s minecraft:instant_health 1 5 true
execute if score @s ap_tokens matches 5.. run scoreboard players remove @s ap_tokens 5
execute if score @s ap_tokens matches 5.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
execute if score @s ap_tokens matches 5.. run tellraw @s [{"text":"[AdminPower] ❤ -5 Token: Tam can! Kalan: ","color":"red"},{"score":{"name":"@s","objective":"ap_tokens"},"color":"yellow"},{"text":" 🪙","color":"gold"}]
execute unless score @s ap_tokens matches 5.. run tellraw @s {"text":"[AdminPower] ❌ Yetersiz token! (5 gerekli)","color":"red"}

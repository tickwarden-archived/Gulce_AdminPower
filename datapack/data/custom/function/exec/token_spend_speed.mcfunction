execute if score @s ap_tokens matches 10.. run effect give @s minecraft:speed 600 2 true
execute if score @s ap_tokens matches 10.. run scoreboard players remove @s ap_tokens 10
execute if score @s ap_tokens matches 10.. run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 1.5
execute if score @s ap_tokens matches 10.. run tellraw @s [{"text":"[AdminPower] 💨 -10 Token: Hız efekti (30sn)! Kalan: ","color":"aqua"},{"score":{"name":"@s","objective":"ap_tokens"},"color":"yellow"},{"text":" 🪙","color":"gold"}]
execute unless score @s ap_tokens matches 10.. run tellraw @s {"text":"[AdminPower] ❌ Yetersiz token! (10 gerekli)","color":"red"}

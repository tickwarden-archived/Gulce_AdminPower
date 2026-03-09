# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_te 1200
scoreboard players add @s ap_tokens 10
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[AdminPower] 💰 +10 Token kazandın! Bakiye: ","color":"gold"},{"score":{"name":"@s","objective":"ap_tokens"},"color":"yellow"},{"text":" 🪙","color":"gold"}]

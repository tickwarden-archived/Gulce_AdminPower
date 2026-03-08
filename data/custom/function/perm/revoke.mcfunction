# Tüm yetkileri kaldır
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_perm 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove op
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove ap.owner
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove ap.admin
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove ap.mod
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tag @s remove ap.vip
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run title @s times 10 60 20
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run title @s title {"text":"🚫 YETKİ ALINDI","color":"dark_red","bold":true}
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run title @s subtitle {"text":"Tüm yetkileriniz kaldırıldı","color":"red"}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🚫 "},{"selector":"@e[type=player,sort=nearest,distance=0.1..,limit=1]","color":"red"},{"text":" yetkisi kaldırıldı!","color":"dark_red"}]

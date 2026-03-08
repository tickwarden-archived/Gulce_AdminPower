# Gerçek ban için konsoldan /kick veya /ban kullanın
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run function custom:ban_apply
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⛔ "},{"selector":"@e[type=player,sort=nearest,distance=0.1..,limit=1]","color":"red"},{"text":" banlandı (spectator+efekt)!","color":"dark_red"}]
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"Gerçek ban için: ","color":"gray"},{"text":"/kick <isim>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/kick "}},{"text":"  veya  ","color":"gray"},{"text":"/ban <isim>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/ban "}}]

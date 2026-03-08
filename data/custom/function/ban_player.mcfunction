function custom:util/tag_target
execute as @a[tag=ap.cur_target,limit=1] run function custom:ban_apply
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⛔ "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"red"},{"text":" banlandı (spectator+efekt)!","color":"dark_red"}]
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"Gerçek ban için: ","color":"gray"},{"text":"/kick <isim>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/kick "}},{"text":"  veya  ","color":"gray"},{"text":"/ban <isim>","color":"yellow","clickEvent":{"action":"suggest_command","value":"/ban "}}]
tag @a remove ap.cur_target

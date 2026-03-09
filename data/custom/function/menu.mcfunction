execute if entity @s[tag=ap.owner,tag=ap.admin] run return run dialog show @s custom:menu/page1
execute if entity @s[tag=ap.admin] run return run dialog show @s custom:menu/page1
execute unless entity @s[tag=ap.admin] unless entity @s[tag=op] run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu menüyü açmak için yetkiniz yok.","color":"red"}]
dialog show @s custom:menu/page1

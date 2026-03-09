execute unless entity @s[tag=op] unless entity @s[tag=macro.admin] run return run tellraw @s [{"text":"[AdminPower] ","color":"red"},{"text":"❌ Bu menü için op tag gerekli."}]
dialog show @s custom:triggers/page1

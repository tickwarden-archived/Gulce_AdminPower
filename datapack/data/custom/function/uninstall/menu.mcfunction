# ════════════════════════════════════════════════
# custom:uninstall/menu — Uninstall (Dialog)
# ════════════════════════════════════════════════
execute unless entity @s[tag=ap.owner] run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Uninstall sadece ap.owner yetkisiyle kullanılabilir.","color":"red"}]
dialog show @s custom:uninstall/menu

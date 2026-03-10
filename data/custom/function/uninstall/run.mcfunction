# uninstall/run — Uninstall onay dialog'unu aç
execute unless score @s ap_perm matches 4 run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Uninstall için owner yetkisi gerekli.","color":"red"}]
dialog show @s custom:uninstall/menu

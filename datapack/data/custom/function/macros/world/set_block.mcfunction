# ═══════════════════════════════════════════════════════════
# Belirtilen konuma blok koy
#
# Kullanım:
#   /function custom:macros/world/set_block {x:0,y:64,z:0,block:"minecraft:diamond_block"}
# ═══════════════════════════════════════════════════════════
$setblock $(x) $(y) $(z) $(block)
$tellraw @s [{"text":"[AdminPower] 🧱 ","color":"gold"},{"text":"$(block)","color":"yellow"},{"text":" → $(x) $(y) $(z)","color":"gray"}]

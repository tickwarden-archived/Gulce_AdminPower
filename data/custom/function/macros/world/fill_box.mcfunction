# ═══════════════════════════════════════════════════════════
# İki köşe arasını blokla doldur
#
# Kullanım:
#   /function custom:macros/world/fill_box {x1:0,y1:60,z1:0,x2:10,y2:70,z2:10,block:"minecraft:air"}
# ═══════════════════════════════════════════════════════════
$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block)
$tellraw @s [{"text":"[AdminPower] 📦 Fill: ","color":"gold"},{"text":"$(x1) $(y1) $(z1)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(x2) $(y2) $(z2)","color":"yellow"},{"text":" ile $(block)","color":"gray"}]

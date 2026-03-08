# ═══════════════════════════════════════════════════════════
# Oyuncuya eşya ver
#
# Kullanım:
#   /function custom:macros/player/give_item {player:"IronCrest",item:"minecraft:diamond",count:16}
# ═══════════════════════════════════════════════════════════
$give $(player) $(item) $(count)
$tellraw $(player) [{"text":"[AdminPower] 🎁 ","color":"gold"},{"text":"$(count)x $(item)","color":"yellow"},{"text":" envanterine eklendi!","color":"gold"}]

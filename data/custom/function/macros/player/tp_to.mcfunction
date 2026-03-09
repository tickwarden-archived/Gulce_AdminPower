# ═══════════════════════════════════════════════════════════
# Oyuncuyu koordinata ışınla
#
# Kullanım:
#   /function custom:macros/player/tp_to {player:"IronCrest",x:0,y:100,z:0}
# ═══════════════════════════════════════════════════════════
$tp $(player) $(x) $(y) $(z)
$tellraw $(player) [{"text":"[AdminPower] 🌀 ","color":"light_purple"},{"text":"$(x) $(y) $(z)","color":"white"},{"text":" konumuna ışınlandın!","color":"light_purple"}]

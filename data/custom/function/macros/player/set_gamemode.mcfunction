# ═══════════════════════════════════════════════════════════
# Belirtilen oyuncuya gamemode ata
#
# Kullanım:
#   /function custom:macros/player/set_gamemode {player:"IronCrest",mode:"creative"}
#   mode: creative | survival | spectator | adventure
# ═══════════════════════════════════════════════════════════
$gamemode $(mode) $(player)
$tellraw $(player) {"text":"[AdminPower] 🎮 Oyun modun değiştirildi: $(mode)","color":"aqua"}

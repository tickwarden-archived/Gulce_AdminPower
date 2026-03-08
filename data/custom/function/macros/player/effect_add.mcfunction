# ═══════════════════════════════════════════════════════════
# Oyuncuya efekt uygula
#
# Kullanım:
#   /function custom:macros/player/effect_add {player:"IronCrest",effect:"minecraft:speed",duration:60,amp:2}
#   duration: saniye | amp: 0-255
# ═══════════════════════════════════════════════════════════
$effect give $(player) $(effect) $(duration) $(amp) true
$tellraw $(player) {"text":"[AdminPower] ✨ Efekt uygulandı: $(effect) x$(amp) — $(duration)sn","color":"light_purple"}

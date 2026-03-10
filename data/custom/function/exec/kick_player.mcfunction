# ═══════════════════════════════════════════════════════════
# exec/kick_player — Kick yönlendirici
# Dialog (page9) doğrudan macros/player/kick'i çağırır.
# Bu dosya geriye dönük uyumluluk içindir.
# Kullanım: /function custom:exec/kick_player
#   → Dialog'u açar
# ═══════════════════════════════════════════════════════════
execute unless score @s ap_perm matches 3.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Kick için admin+ yetkisi gerekli.","color":"red"}]
dialog show @s custom:menu/page9

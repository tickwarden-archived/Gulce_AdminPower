# ═══════════════════════════════════════════════════════════
# ÇOKLU KOMUT ÇALIŞTIRICI
#
# Kullanım:
#   /function custom:macros/multi_cmd/run {commands:["cmd1","cmd2","cmd3"]}
#
# AME varsa → macro:cmd/other/multi_cmd (daha verimli, CD epoch-bazlı)
# AME yoksa → vanilla implementasyon (200t scoreboard cooldown)
# ═══════════════════════════════════════════════════════════

# commands argümanını storage'a kaydet (AME sub-fonksiyonu için)
$data modify storage macro:input commands set value $(commands)

# AME yolu: tüm CD check + execute AME'ye devredilir
execute if score $ame ap_flags matches 1 run return run function custom:ame/multi_cmd_gate

# ── Scoreboard yolu (AME yokken) ──────────────────────────
execute if score @s ap_cd_mc matches 1.. run return run tellraw @s {"text":"[AdminPower] ⏱ Komut cooldown aktif, bekleyin.","color":"red"}
scoreboard players set @s ap_cd_mc 200
$data modify storage custom:cmd queue set value $(commands)
function custom:macros/multi_cmd/process

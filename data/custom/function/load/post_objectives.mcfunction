# ════════════════════════════════════════════════
# custom:load/post_objectives
# Her /reload'da çalışır (objectives add'den sonra veya direkt).
# AME algılama, versiyon kontrolü, toggle sync buradadır.
# ════════════════════════════════════════════════

# ── Sabitler ────────────────────────────────────
scoreboard players set $ame ap_flags 0

# ── AME Algılama ────────────────────────────────
execute if data storage macro:engine {global:{}} run scoreboard players set $ame ap_flags 1
execute if score $ame ap_flags matches 1 run function custom:ame/on_load

# ── Versiyon Kontrolü ───────────────────────────
function custom:version_check

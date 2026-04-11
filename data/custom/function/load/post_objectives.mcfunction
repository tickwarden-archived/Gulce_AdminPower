# ╔═══════════════════════════════════════════════════════╗
# ║  AdminPower v1.4.0 — post_objectives                ║
# ║  Her /reload'da çalışır.                            ║
# ║  v1.4.0: AME zorunlu — detection kaldırıldı        ║
# ╚═══════════════════════════════════════════════════════╝

# ── AME Zorunluluk Kontrolü ──────────────────────────────
execute unless data storage macro:engine {global:{}} run tellraw @a [{"text":"[AdminPower] ","color":"red","bold":true},{"text":"❌ macroEngine bulunamadı! AME v3.0+ gereklidir. Pack devre dışı.","color":"red"}]
execute unless data storage macro:engine {global:{}} run return 0

# ── AME Algılandı — Yükle ───────────────────────────────
scoreboard players set $ame ap_flags 1
function custom:ame/on_load

# ── Versiyon Kontrolü ───────────────────────────────────
function custom:version_check
# ╔═══════════════════════════════════════════════════════════╗
# ║  AdminPower v1.3.6 — VERSION CHECK                       ║
# ║  Her /reload'da çalışır. İki kontrol yapar:              ║
# ║   1) Pack sürümü değişmiş mi? (storage karşılaştırma)    ║
# ║   2) MC sürümü destekleniyor mu? (pack_format testi)     ║
# ╚═══════════════════════════════════════════════════════════╝

# ── 1. Pack sürüm değişikliği kontrolü ──────────────────────
# storage'da kayıtlı önceki sürümü oku
# İlk yüklemede storage boş olur → "none" sayılır

execute if data storage custom:meta {ap_version:"1.3.6"} run scoreboard players set $ver_ok ap_flags 1
execute unless data storage custom:meta {ap_version:"1.3.6"} run scoreboard players set $ver_ok ap_flags 0

# Sürüm eşleşiyor → yeniden yükleme mesajı
execute if score $ver_ok ap_flags matches 1 run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"✅ v1.3.6","color":"green"},{"text":" yüklendi. Sürüm uyumlu.","color":"gray"}]

# Sürüm farklı (ilk kurulum veya güncelleme)
execute if score $ver_ok ap_flags matches 0 run function custom:version_warn

# Sürümü storage'a yaz (bu noktadan sonra artık 1.0.0 kayıtlı)
data modify storage custom:meta ap_version set value "1.3.6"
data modify storage custom:meta pack_format set value 94
data modify storage custom:meta mc_compat set value "1.21.11"

# ── 2. MC sürüm aralığı skoru ────────────────────────────────
# pack_format 71 = 1.21.5
# Beklenen aralığı sabit olarak sakla (bilgi amaçlı)
scoreboard players set $pf_min ap_flags 71
scoreboard players set $pf_max ap_flags 94
scoreboard players set $pf_cur ap_flags 94

# Mevcut pack_format beklenen aralıkta mı? (sabit karşılaştırma)
execute if score $pf_cur ap_flags >= $pf_min ap_flags run execute if score $pf_cur ap_flags <= $pf_max ap_flags run scoreboard players set $pf_ok ap_flags 1
execute unless score $pf_ok ap_flags matches 1 run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚠ Uyumsuz MC sürümü! ","color":"red"},{"text":"Bu pack 1.21.5–1.21.11 için tasarlandı.","color":"yellow"}]

execute unless entity @s[tag=ap.owner] run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Uninstall sadece ap.owner yetkisiyle kullanılabilir.","color":"red"}]

# ════════════════════════════════════════════════════════════
# Uninstall onaylandı — tüm adımları sırayla çalıştır
# ════════════════════════════════════════════════════════════
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🗑 Kaldırılıyor...","color":"red"}]

# 1. Gamerule'ları sıfırla (toggle'lar açık kalmış olabilir)
function custom:uninstall/reset_gamerules

# 2. Effect'leri temizle
function custom:uninstall/clear_effects

# 3. Tag'leri kaldır
function custom:uninstall/remove_tags

# 4. Scoreboard'ları sil
function custom:uninstall/remove_scoreboards

# 5. AME storage temizliği (AME varsa)
execute if score $ame ap_flags matches 1 run function custom:uninstall/clear_ame_storage

# 6. Forceload kaldır (AME player/get_name için eklenmişse)
forceload remove 0 300

tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"✅ Kaldırma tamamlandı. Datapack'i listeden çıkarabilirsin.","color":"green"}]
tellraw @a [{"text":"  /datapack disable \"file/Gulce_AdminPower_v1_3_3-AME.zip\"","color":"gray","italic":true}]

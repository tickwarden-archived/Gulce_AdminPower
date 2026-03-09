# ============================================
# custom:ame/cd/reset — Tek Oyuncu CD Sıfırla
# ============================================
# @s'nin tüm AME epoch-bazlı cooldown'larını sıfırlar.
# Scoreboard CD'leri de sıfırlar (geçiş dönemi için).
# ============================================
function custom:ame/player/cache_name

# AME cooldowns temizle: ilgili storage key'i sil
data modify storage macro:input player set from storage custom:ame name_cache.NAME
function custom:ame/cd/reset/clear with storage macro:input {}

# Scoreboard CD'lerini de sıfırla (fallback için)
function custom:cd/reset_all

tellraw @s [{"text":"[AME] ","color":"aqua"},{"text":"✅ Tüm CD'lerin sıfırlandı!","color":"green"}]

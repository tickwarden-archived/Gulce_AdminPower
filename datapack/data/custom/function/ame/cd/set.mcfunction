# ============================================
# custom:ame/cd/set (Generic — tek dosya)
# ============================================
# PRECONDITION:
#   custom:ame name_cache.NAME  → oyuncu adı (cache_name'den)
#   custom:ame cd_op.key        → ap_cd_XX   (scoreboard key)
#   custom:ame cd_op.config_key → config adı (macro:config'de)
#
# ÇALIŞMA:
#   1. config'den CD süresini oku (int olarak saklı)
#   2. cooldown/set ile epoch-bazlı CD başlat
# ============================================

# Oyuncu adını macro:input'a koy
data modify storage macro:input player set from storage custom:ame name_cache.NAME

# Config key → config değerini oku
data modify storage macro:input key set from storage custom:ame cd_op.config_key
function macro:config/get with storage macro:input {}

# Gerçek key + duration → cooldown/set
data modify storage macro:input key set from storage custom:ame cd_op.key
data modify storage macro:input duration set from storage macro:output result
function macro:cooldown/set with storage macro:input {}

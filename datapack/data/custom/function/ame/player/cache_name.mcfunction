# ============================================
# custom:ame/player/cache_name
# ============================================
# @s'nin adını custom:ame name_cache.NAME'e yazar.
# Bu tick içinde sonraki ame/cd/ çağrıları buradan okur.
# macro:player/get_name sadece BIR KEZ çağrılır.
#
# PRECONDITION: AME yüklü ve 0 300 0 forceloaded
# ============================================
function macro:player/get_name
data modify storage custom:ame name_cache.NAME set from storage macro:names temp.NAME

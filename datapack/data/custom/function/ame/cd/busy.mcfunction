# ============================================
# custom:ame/cd/busy (Generic)
# ============================================
# PRECONDITION:
#   macro:input { player: "...", key: "ap_cd_XX" }  — check_XX'te set edildi
#   custom:ame name_cache.NAME — cache_name'den
#
# Kalan tick sayısını actionbar'da gösterir.
# ============================================
function macro:cooldown/remaining with storage macro:input {}
execute store result score @s ap_tmp run data get storage macro:output result 1
title @s actionbar [{"text":"⏱ ","color":"gray"},{"score":{"name":"@s","objective":"ap_tmp"},"color":"yellow"},{"text":" tik kaldı","color":"gray"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

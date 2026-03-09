# ============================================
# custom:ame/cd/overview — CD Durumu
# ============================================
# @s için tüm aktif cooldown'ları listeler.
# /function custom:ame/cd/overview
# ============================================
function custom:ame/player/cache_name
tellraw @s [{"text":"═══[ ","color":"dark_gray"},{"text":"CD Durumu","color":"yellow","bold":true},{"text":" — ","color":"dark_gray"},{"selector":"@s","color":"gold"},{"text":" ]═══","color":"dark_gray"}]

# Her CD key için remaining sorgula ve göster
data modify storage macro:input player set from storage custom:ame name_cache.NAME

data modify storage macro:input key set value "ap_cd_fb"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_ex"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_fz"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_iv"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_hl"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_ha"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_el"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_dm"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_st"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_lt"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_ta"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_gda"
function custom:ame/cd/overview/show_entry with storage macro:input {}
data modify storage macro:input key set value "ap_cd_mc"
function custom:ame/cd/overview/show_entry with storage macro:input {}

tellraw @s [{"text":"─────────────────────────────","color":"dark_gray"},{"text":"  ⏩ Sıfırla","color":"dark_green","italic":true,"clickEvent":{"action":"run_command","value":"/function custom:cd/reset_all"}}]

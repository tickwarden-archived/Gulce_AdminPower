# Aktif CD'yi renkli göster
# ap_tmp = kalan tik, macro:input.key = ap_cd_XX
data modify storage custom:ame overview_key set from storage macro:input key
function custom:ame/cd/overview/format_key with storage custom:ame overview_key
tellraw @s [{"text":"  ⏱ ","color":"gray"},{"storage":"custom:ame","nbt":"overview_label","interpret":false,"color":"yellow"},{"text":" → ","color":"dark_gray"},{"score":{"name":"@s","objective":"ap_tmp"},"color":"red"},{"text":" tik","color":"gray"}]

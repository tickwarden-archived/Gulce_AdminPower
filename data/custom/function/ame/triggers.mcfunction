# ============================================
# custom:ame/triggers — AME Trigger Bağlamaları
# ============================================
# AdminPower özelliklerine /trigger macro_action ile erişim.
# /trigger macro_action set <değer> kullanımı:
#   100 → AdminPower Ana Menü
#   101 → AME Log Görüntüle
#   102 → AME CD Durumu
#   103 → AME Status
# ============================================

data modify storage macro:input value set value 100
data modify storage macro:input func set value "custom:menu"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 101
data modify storage macro:input func set value "custom:ame/log"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 102
data modify storage macro:input func set value "custom:ame/cd/overview"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 103
data modify storage macro:input func set value "custom:ame/status"
function macro:trigger/bind with storage macro:input {}

tellraw @a [{"text":"[AME] ","color":"aqua"},{"text":"Trigger bindings yüklendi. ","color":"dark_aqua"},{"text":"/trigger macro_action","color":"yellow","italic":true},{"text":" → 100=Menü 101=Log 102=CD 103=Durum","color":"dark_gray"}]

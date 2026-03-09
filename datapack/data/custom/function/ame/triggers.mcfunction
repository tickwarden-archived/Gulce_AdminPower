# ============================================
# custom:ame/triggers — AME Trigger Bağlamaları
# ============================================
# RELOAD KORUMASI: önce tüm bind'ları temizle, sonra yeniden yaz.
# macro:trigger/bind APPEND eder — unbind_all olmadan her reload'da
# aynı trigger N kez çalışır.
# ============================================
function macro:trigger/unbind_all

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

data modify storage macro:input value set value 110
data modify storage macro:input func set value "custom:give_armor_self"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 111
data modify storage macro:input func set value "custom:freeze_self_trigger"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 112
data modify storage macro:input func set value "custom:tp_spawn_self"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 113
data modify storage macro:input func set value "custom:give_xp_self"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 114
data modify storage macro:input func set value "custom:invisibility_self"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 115
data modify storage macro:input func set value "custom:fire_resist_self"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 116
data modify storage macro:input func set value "custom:give_diamond_self"
function macro:trigger/bind with storage macro:input {}

data modify storage macro:input value set value 117
data modify storage macro:input func set value "custom:give_netherite_self"
function macro:trigger/bind with storage macro:input {}

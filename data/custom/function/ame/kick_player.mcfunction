# ============================================
# custom:ame/kick_player
# ============================================
# AME'nin macro:cmd/kick'ini kullanarak oyuncu kick'ler.
# AME yoksa custom:macros/player/kick'e düşer.
# INPUT: execute as <admin> run function ... with storage {player:"...", reason:"..."}
#
# Kullanım:
#   data modify storage macro:input player set value "Steve"
#   data modify storage macro:input reason set value "Kural ihlali"
#   execute as <admin> run function custom:ame/kick_player with storage macro:input {}
# ============================================

# Yetki kontrolü (AME)
execute unless entity @s[tag=macro.admin] unless entity @s[tag=op] run return run tellraw @s {"text":"[AdminPower] ❌ Kick için yetkiniz yok.","color":"red"}

# Kick
function macro:cmd/kick with storage macro:input {}

# Log
data modify storage macro:input message set from storage macro:input player
data modify storage macro:input level set value "WARN"
data modify storage macro:input color set value "gold"
function macro:log/add with storage macro:input {}

# Event
data modify storage macro:input event set value "ap_kick_used"
function macro:event/fire with storage macro:input {}

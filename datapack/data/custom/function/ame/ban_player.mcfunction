# ============================================
# custom:ame/ban_player
# ============================================
# AME'nin macro:cmd/ban'ini kullanarak oyuncu ban'lar.
# INPUT: macro:input { player:"...", reason:"..." }
# ============================================
execute unless entity @s[tag=macro.admin] unless entity @s[tag=op] run return run tellraw @s {"text":"[AdminPower] ❌ Ban için yetkiniz yok.","color":"red"}

function macro:cmd/ban with storage macro:input {}

# Log
data modify storage macro:input level set value "ERROR"
data modify storage macro:input color set value "dark_red"
function macro:log/add with storage macro:input {}

data modify storage macro:input event set value "ap_ban_used"
function macro:event/fire with storage macro:input {}

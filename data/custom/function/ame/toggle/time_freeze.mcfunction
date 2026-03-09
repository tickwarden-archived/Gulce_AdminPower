# ════════════════════════════════════════════════
# custom:ame/toggle/time_freeze
# AME varken çağrılır — macro:flag ile toggle
# ════════════════════════════════════════════════
data modify storage macro:input key set value "ap_time_frozen"
function macro:flag/toggle with storage macro:input {}

# result:1b = yeni durum AÇ (freeze ON) → gamerule kapat
execute if data storage macro:output {result:1b} run gamerule doDaylightCycle false
execute if data storage macro:output {result:1b} run scoreboard players set $time_frozen ap_flags 1
execute if data storage macro:output {result:1b} run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 1
execute if data storage macro:output {result:1b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🕐 Zaman donduruldu!","color":"dark_aqua","bold":true},{"text":" (doDaylightCycle: off)","color":"dark_gray"}]

# result:0b = yeni durum KAPALI (freeze OFF) → gamerule aç
execute if data storage macro:output {result:0b} run gamerule doDaylightCycle true
execute if data storage macro:output {result:0b} run scoreboard players set $time_frozen ap_flags 0
execute if data storage macro:output {result:0b} run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1
execute if data storage macro:output {result:0b} run tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🕐 Zaman serbest bırakıldı!","color":"aqua"},{"text":" (doDaylightCycle: on)","color":"dark_gray"}]

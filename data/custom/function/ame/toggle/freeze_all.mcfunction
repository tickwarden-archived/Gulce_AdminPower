# ════════════════════════════════════════════════
# custom:ame/toggle/freeze_all
# AME varken çağrılır — macro:flag ile freeze toggle
# ════════════════════════════════════════════════
data modify storage macro:input key set value "ap_frozen"
function macro:flag/toggle with storage macro:input {}

# result:1b = dondur
execute if data storage macro:output {result:1b} run function custom:exec/freeze_all

# result:0b = çöz (CD olmadan)
execute if data storage macro:output {result:0b} run tag @a remove ap.freezed
execute if data storage macro:output {result:0b} run effect clear @a minecraft:slowness
execute if data storage macro:output {result:0b} run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5
execute if data storage macro:output {result:0b} run tellraw @a {"text":"[AdminPower] 🌊 Tüm oyuncuların dondurması çözüldü!","color":"blue"}

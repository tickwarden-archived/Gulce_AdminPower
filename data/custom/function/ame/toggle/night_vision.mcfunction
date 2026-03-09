# ════════════════════════════════════════════════
# custom:ame/toggle/night_vision
# macro:flag ile gece görüşü toggle
# ════════════════════════════════════════════════
data modify storage macro:input key set value "ap_nv_all"
function macro:flag/toggle with storage macro:input {}

# result:1b = AÇ
execute if data storage macro:output {result:1b} run effect give @a minecraft:night_vision 99999 0 true
execute if data storage macro:output {result:1b} run tag @s add ap.nv_all
execute if data storage macro:output {result:1b} run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2
execute if data storage macro:output {result:1b} run tellraw @a {"text":"[AdminPower] 👁 Tüm oyuncular gece görebiliyor!","color":"aqua"}

# result:0b = KAPAT
execute if data storage macro:output {result:0b} run effect clear @a minecraft:night_vision
execute if data storage macro:output {result:0b} run tag @s remove ap.nv_all
execute if data storage macro:output {result:0b} run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.5 1
execute if data storage macro:output {result:0b} run tellraw @a {"text":"[AdminPower] 👁 Gece görüşü kapatıldı!","color":"gray"}

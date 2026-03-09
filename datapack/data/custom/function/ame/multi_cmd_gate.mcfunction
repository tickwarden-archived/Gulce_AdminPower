# ============================================
# custom:ame/multi_cmd_gate
# ============================================
# AME üzerinden multi_cmd: CD kontrolü + pipeline
# PRECONDITION: macro:input.commands listesi set edilmiş
# ============================================

# 1. Adı önbelleğe al + cd_op ayarla
function custom:ame/player/cache_name
data modify storage custom:ame cd_op set value {key:"ap_cd_mc", config_key:"multicmd"}

# 2. Cooldown kontrolü
data modify storage macro:input player set from storage custom:ame name_cache.NAME
data modify storage macro:input key set value "ap_cd_mc"
function macro:cooldown/check with storage macro:input {}

# 3a. CD aktifse → busy göster ve çık
execute if data storage macro:output {result:0b} run return run function custom:ame/cd/busy

# 3b. CD dolmuşsa → CD başlat + çalıştır
function custom:ame/cd/set

# 4. Commands listesini AME pipeline'ına aktar
data modify storage macro:input list set from storage macro:input commands
function macro:cmd/other/multi_cmd/from_input

# 5. Event log
data modify storage macro:input event set value "ap_multicmd_used"
function macro:event/fire with storage macro:input {}

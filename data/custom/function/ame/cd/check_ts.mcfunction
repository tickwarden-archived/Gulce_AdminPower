# AME Cooldown Check: ap_cd_ts
# 1. İsmi önbelleğe al (bu tick için 1x)
function custom:ame/player/cache_name
# 2. CD op parametrelerini ayarla (generic set için)
data modify storage custom:ame cd_op set value {key:"ap_cd_ts", config_key:"tp_spawn"}
# 3. Cooldown kontrolü
data modify storage macro:input player set from storage custom:ame name_cache.NAME
data modify storage macro:input key set value "ap_cd_ts"
function macro:cooldown/check with storage macro:input {}
execute if data storage macro:output {result:0b} run function custom:ame/cd/busy
execute if data storage macro:output {result:1b} run function custom:exec/tp_spawn_all

# AME Cooldown Check: ap_cd_ar
function custom:ame/player/cache_name
data modify storage custom:ame cd_op set value {key:"ap_cd_ar", config_key:"ar"}
data modify storage macro:input player set from storage custom:ame name_cache.NAME
data modify storage macro:input key set value "ap_cd_ar"
function macro:cooldown/check with storage macro:input {}
execute if data storage macro:output {result:0b} run function custom:ame/cd/busy
execute if data storage macro:output {result:1b} run function custom:exec/arrow_self

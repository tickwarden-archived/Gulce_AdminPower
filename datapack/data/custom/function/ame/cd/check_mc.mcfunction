# AME Cooldown Check: ap_cd_mc (multi_cmd)
function custom:ame/player/cache_name
data modify storage custom:ame cd_op set value {key:"ap_cd_mc", config_key:"multicmd"}
data modify storage macro:input player set from storage custom:ame name_cache.NAME
data modify storage macro:input key set value "ap_cd_mc"
function macro:cooldown/check with storage macro:input {}
execute if data storage macro:output {result:0b} run function custom:ame/cd/busy
# Eğer hazırsa: multi_cmd_gate devam eder (return edilmez)

# AME Cooldown Check: ap_cd_inv (invisibility_self)
function custom:ame/player/cache_name
data modify storage custom:ame cd_op set value {key:"ap_cd_inv", config_key:"invisibility"}
data modify storage macro:input player set from storage custom:ame name_cache.NAME
data modify storage macro:input key set value "ap_cd_inv"
function macro:cooldown/check with storage macro:input {}
execute if data storage macro:output {result:0b} run function custom:ame/cd/busy
execute if data storage macro:output {result:1b} run function custom:exec/invisibility_self

# ============================================
# custom:ame/config/set_default_int
# ============================================
# config key'i yoksa INT olarak yaz. Varsa dokunma.
# Bu, macro:config/set_default'un integer versiyonu.
#
# INPUT: macro:input { key:"<key>", value:<int> }
# OUTPUT: macro:output { result: 1b (yazıldı) | 0b (zaten vardı) }
# ============================================
$execute if data storage macro:engine config.$(key) run data modify storage macro:output result set value 0b
$execute if data storage macro:engine config.$(key) run return 0
$execute store result storage macro:engine config.$(key) int 1 run scoreboard players set $cfg_ap_tmp macro.tmp $(value)
data modify storage macro:output result set value 1b

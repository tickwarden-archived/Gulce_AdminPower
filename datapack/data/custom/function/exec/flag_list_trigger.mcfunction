# exec/flag_list_trigger — macro:flag Sistemi Durumu
# AME gerekli
execute if score $ame ap_flags matches 0 run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu özellik AME (macroEngine) gerektirir.","color":"red"}]
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🏳 AdminPower Flag Durumu:","color":"light_purple","bold":true}]
# ap_frozen flag
execute if data storage macro:engine flags.ap_frozen run tellraw @s [{"text":"  ap_frozen → ","color":"gray"},{"text":"AÇIK","color":"red","bold":true}]
execute unless data storage macro:engine flags.ap_frozen run tellraw @s [{"text":"  ap_frozen → ","color":"gray"},{"text":"KAPALI","color":"green"}]
# ap_mob_spawn_off flag
execute if data storage macro:engine flags.ap_mob_spawn_off run tellraw @s [{"text":"  ap_mob_spawn_off → ","color":"gray"},{"text":"AÇIK (spawn kapalı)","color":"red","bold":true}]
execute unless data storage macro:engine flags.ap_mob_spawn_off run tellraw @s [{"text":"  ap_mob_spawn_off → ","color":"gray"},{"text":"KAPALI (spawn açık)","color":"green"}]
# ap_nv_all flag
execute if data storage macro:engine flags.ap_nv_all run tellraw @s [{"text":"  ap_nv_all → ","color":"gray"},{"text":"AÇIK","color":"aqua","bold":true}]
execute unless data storage macro:engine flags.ap_nv_all run tellraw @s [{"text":"  ap_nv_all → ","color":"gray"},{"text":"KAPALI","color":"gray"}]
# macro:engine global flags (tüm liste)
tellraw @s [{"text":"  Tüm motorFlags: ","color":"dark_gray"},{"storage":"macro:engine","nbt":"flags","color":"white"}]

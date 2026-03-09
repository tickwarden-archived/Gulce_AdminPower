# ════════════════════════════════════════════════
# mob_spawn_toggle — BUG FIX + AME entegrasyonu
# ════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run return run function custom:ame/toggle/mob_spawn
execute if score #mob_spawn ap_flags matches 1 run return run function custom:exec/mob_spawn_off
function custom:exec/mob_spawn_on

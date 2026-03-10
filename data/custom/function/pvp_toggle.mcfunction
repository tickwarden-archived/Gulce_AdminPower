# ════════════════════════════════════════════════
# pvp_toggle — AME + vanilla pattern
# ════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run return run function custom:ame/toggle/pvp
execute if score #pvp_on ap_flags matches 1 run return run function custom:exec/pvp_off
function custom:exec/pvp_on

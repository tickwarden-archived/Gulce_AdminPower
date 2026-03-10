# ════════════════════════════════════════════════
# keep_inv_toggle — AME + vanilla pattern
# ════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run return run function custom:ame/toggle/keep_inv
execute if score #kinv_on ap_flags matches 1 run return run function custom:exec/keep_inv_off
function custom:exec/keep_inv_on

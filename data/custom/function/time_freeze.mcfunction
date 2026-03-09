# ════════════════════════════════════════════════
# time_freeze toggle — BUG FIX + AME entegrasyonu
# ════════════════════════════════════════════════
# AME varsa: macro:flag ile atom-safe toggle (server restart korumalı)
# AME yoksa: scoreboard toggle (return ile bug fix)
# ════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run return run function custom:ame/toggle/time_freeze
execute if score #time_frozen ap_flags matches 1 run return run function custom:exec/time_unfreeze
function custom:exec/time_freeze_on

# ════════════════════════════════════════════════
# toggle_freeze — BUG FIX + AME entegrasyonu
# ════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run return run function custom:ame/toggle/freeze_all
execute if entity @a[tag=ap.freezed,gamemode=!spectator] run return run function custom:unfreeze_all
function custom:freeze_all

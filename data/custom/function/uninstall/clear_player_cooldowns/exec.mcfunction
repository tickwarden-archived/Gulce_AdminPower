# Macro: oyuncunun tüm ap_cd_ cooldown'larını sil
$execute if data storage macro:engine cooldowns.$(player) run data remove storage macro:engine cooldowns.$(player)

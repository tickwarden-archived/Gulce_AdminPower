# @s (her oyuncu) için AME cooldown storage'ını sil
function macro:player/get_name
data modify storage macro:input player set from storage macro:names temp.NAME
function custom:uninstall/clear_player_cooldowns/exec with storage macro:input {}

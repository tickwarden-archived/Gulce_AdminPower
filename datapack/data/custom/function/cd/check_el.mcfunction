# AME yolu (epoch-bazlı, reload-safe)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/check_el
execute if score $ame ap_flags matches 0 run return run function custom:cd/scoreboard_check_el

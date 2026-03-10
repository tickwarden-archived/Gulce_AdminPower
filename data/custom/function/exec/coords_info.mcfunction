# ════════════════════════════════════════════════
# custom:exec/coords_info — Koordinat bilgisi
# Tam sayı koordinat: Pos[i] * 1.0 → ap_tmp'ye store
# ════════════════════════════════════════════════
execute store result score #cx ap_tmp run data get entity @s Pos[0] 1
execute store result score #cy ap_tmp run data get entity @s Pos[1] 1
execute store result score #cz ap_tmp run data get entity @s Pos[2] 1
tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"📍 Konum  ","color":"white","bold":true},{"text":"X: ","color":"yellow"},{"score":{"name":"#cx","objective":"ap_tmp"},"color":"aqua"},{"text":"  Y: ","color":"yellow"},{"score":{"name":"#cy","objective":"ap_tmp"},"color":"aqua"},{"text":"  Z: ","color":"yellow"},{"score":{"name":"#cz","objective":"ap_tmp"},"color":"aqua"}]

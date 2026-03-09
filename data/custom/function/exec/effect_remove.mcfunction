# ═══════════════════════════════════════════════════════════
# exec/effect_remove — Hedef oyuncunun tüm efektlerini temizle
# ═══════════════════════════════════════════════════════════
function custom:util/tag_target
effect clear @a[tag=ap.cur_target,limit=1]
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.7 1
tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"🧹 "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" üzerindeki tüm efektler temizlendi.","color":"gray"}]
tag @a remove ap.cur_target

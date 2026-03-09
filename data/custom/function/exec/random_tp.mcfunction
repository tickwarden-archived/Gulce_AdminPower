# ═══════════════════════════════════════════════════════════
# exec/random_tp — Rastgele koordinata ışınlan
# -3000..3000 X/Z arası, Y=200 (düşerek iner).
# ═══════════════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_rtp 600

execute store result storage custom:tmp rtp_x int 1 run random value -3000..3000
execute store result storage custom:tmp rtp_z int 1 run random value -3000..3000
function custom:macros/world/random_tp with storage custom:tmp

playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
title @s actionbar {"text":"🎲 Rastgele Işınlandın!","color":"light_purple"}
tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"🎲 Rastgele koordinata ışınlandın!","color":"light_purple"},{"text":" (Y=200 → yavaş düşüş tavsiye edilir)","color":"dark_gray"}]

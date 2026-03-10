# ═══════════════════════════════════════════════════════════
# exec/vanish_toggle — Görünmezlik (Vanish) Toggle
# Tag ap.vanished varsa kapat, yoksa aç.
# ═══════════════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_vn 200

scoreboard players set #vn_state ap_tmp 0
execute if entity @s[tag=ap.vanished] run scoreboard players set #vn_state ap_tmp 1

# Aç — görünmez yap
execute if score #vn_state ap_tmp matches 0 run tag @s add ap.vanished
execute if score #vn_state ap_tmp matches 0 run effect give @s minecraft:invisibility infinite 0 true
execute if score #vn_state ap_tmp matches 0 run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.7 1.2
execute if score #vn_state ap_tmp matches 0 run title @s actionbar {"text":"👻 VANISH AKTİF","color":"aqua","bold":true}
execute if score #vn_state ap_tmp matches 0 run tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"👻 Vanish ","color":"aqua","bold":true},{"text":"AKTİF — diğer oyuncular seni göremez.","color":"gray"}]

# Kapat — görünür yap
execute if score #vn_state ap_tmp matches 1 run tag @s remove ap.vanished
execute if score #vn_state ap_tmp matches 1 run effect clear @s minecraft:invisibility
execute if score #vn_state ap_tmp matches 1 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.6 1
execute if score #vn_state ap_tmp matches 1 run title @s actionbar {"text":"👁 VANISH KAPALI","color":"yellow"}
execute if score #vn_state ap_tmp matches 1 run tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"👁 Vanish ","color":"yellow"},{"text":"KAPALI — artık görünürsün.","color":"gray"}]

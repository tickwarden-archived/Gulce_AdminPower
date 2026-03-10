# lp_permission_all — Tüm oyunculara admin yetkisi ver
execute unless score @s ap_perm matches 4 run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için owner yetkisi gerekli.","color":"red"}]
execute as @a run function custom:perm/set_admin
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"✅ Tüm oyunculara admin yetkisi verildi.","color":"green"}]

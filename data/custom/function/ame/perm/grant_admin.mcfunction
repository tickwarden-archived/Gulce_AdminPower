# ============================================
# custom:ame/perm/grant_admin
# ============================================
# @s'ye AdminPower admin yetkisi VE macro.admin tag'ini ver.
# INPUT: execute as <oyuncu> run function custom:ame/perm/grant_admin
# ============================================
tag @s add ap.admin
tag @s add macro.admin
scoreboard players set @s ap_perm 3
tellraw @s [{"text":"[AdminPower × AME] ","color":"gold"},{"text":"Admin yetkisi verildi. AME komutları aktif.","color":"green"}]

# HF-015: AME durumunu göster
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"[AME] ","color":"aqua"},{"text":"✅ Advanced Macro Engine yüklü ve aktif!","color":"green"}]
execute if score $ame ap_flags matches 0 run tellraw @s [{"text":"[AME] ","color":"aqua"},{"text":"⚠ AME bulunamadı. Native cooldown sistemi aktif.","color":"yellow"}]
execute if score $ame ap_flags matches 0 run tellraw @s {"text":"→ AME kurmak için: https://github.com/tickwarden/macroEngine-dp","color":"gray"}

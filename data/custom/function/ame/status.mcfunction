# ============================================
# custom:ame/status — Detaylı AME Durum Raporu
# /function custom:ame/status
# ============================================

execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"╔═══[ ","color":"dark_gray"},{"text":"AdminPower × AME v1.3","color":"aqua","bold":true},{"text":" ]═══╗","color":"dark_gray"}]

# AME aktif branch
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"Advanced Macro Engine yüklü","color":"white"}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"Epoch-bazlı CD (reload-safe)","color":"white"}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"CD süreleri macro:config'den","color":"white"},{"text":"  ","color":"white"},{"text":"[Config]","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom:ame/config"},"hoverEvent":{"action":"show_text","value":"Config listesini göster"}}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"Event sistemi (9 event)","color":"white"},{"text":"  ","color":"white"},{"text":"[Log]","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom:ame/log"},"hoverEvent":{"action":"show_text","value":"Log görüntüle"}}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"AME Multi-cmd pipeline","color":"white"}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"macro_action trigger bağlamaları","color":"white"},{"text":"  ","color":"white"},{"text":"[100=Menü 101=Log 102=CD 103=Bu]","color":"dark_gray","italic":true}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"ap.admin ↔ macro.admin yetki bridge","color":"white"}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ✅ ","color":"green"},{"text":"Tick optimizasyonu (scoreboard CD devre dışı)","color":"white"}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"  ","color":"gray"},{"text":"CD Durumu: ","color":"gray"},{"text":"[Görüntüle]","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom:ame/cd/overview"},"hoverEvent":{"action":"show_text","value":"Aktif CD'leri listele"}}]
execute if score $ame ap_flags matches 1 run tellraw @s [{"text":"╚═══════════════════════════════╝","color":"dark_gray"}]

# AME pasif branch
execute if score $ame ap_flags matches 0 run tellraw @s [{"text":"[AME] ","color":"aqua"},{"text":"⚠ AME bulunamadı. ","color":"yellow"},{"text":"Native scoreboard CD sistemi aktif.","color":"gray"}]
execute if score $ame ap_flags matches 0 run tellraw @s [{"text":"→ Kurmak için: ","color":"gray"},{"text":"https://github.com/tickwarden/macroEngine-dp","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/tickwarden/macroEngine-dp"}}]

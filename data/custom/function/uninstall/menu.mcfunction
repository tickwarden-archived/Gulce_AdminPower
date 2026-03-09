# ════════════════════════════════════════════════
# custom:uninstall/menu — Uninstall Bilgi Sayfası
# ════════════════════════════════════════════════
execute unless entity @s[tag=ap.owner] run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Uninstall sadece ap.owner yetkisiyle kullanılabilir.","color":"red"}]

tellraw @s [{"text":"╔═══[ ","color":"dark_red"},{"text":"⚠ AdminPower Kaldırma","color":"red","bold":true},{"text":" ]═══╗","color":"dark_red"}]
tellraw @s [{"text":"  Bu işlem şunları siler:","color":"gray"}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Tüm ap_ scoreboard objective'leri","color":"white"}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Tüm oyuncu yetki tag'leri","color":"white"}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"AME config, cooldown, event kaydı","color":"white"}]
tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Toggle state'leri (gamerule'lar sıfırlanır)","color":"white"}]
tellraw @s [{"text":"  Bu işlem ","color":"gray"},{"text":"GERİ ALINAMAZ","color":"red","bold":true},{"text":". Devam?","color":"gray"}]
tellraw @s [{"text":"  "},{"text":"[ ✅ ONAYLA ]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function custom:uninstall/confirm"},"hoverEvent":{"action":"show_text","value":"Tüm AdminPower verilerini sil"}},{"text":"   "},{"text":"[ ❌ İPTAL ]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function custom:ame/menu_page"},"hoverEvent":{"action":"show_text","value":"Geri dön"}}]

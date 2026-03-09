# ============================================
# custom:ame/menu_page — AME Araçları Sayfası
# ============================================
# Ana menüden erişim: page16 sonrası
# /function custom:ame/menu_page
# ============================================
tellraw @s [{"text":"═══[ ","color":"dark_gray"},{"text":"⚙ AME Araçları","color":"aqua","bold":true},{"text":" ]═══","color":"dark_gray"}]
tellraw @s [{"text":"  "},{"text":"📋 Log Görüntüle","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom:ame/log"},"hoverEvent":{"action":"show_text","value":"Son admin aksiyonlarını göster"}},{"text":"    "},{"text":"🗑 Log Temizle","color":"red","clickEvent":{"action":"run_command","value":"/function custom:ame/log/clear"},"hoverEvent":{"action":"show_text","value":"Log'u temizle"}}]
tellraw @s [{"text":"  "},{"text":"⏱ CD Durumu","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom:ame/cd/overview"},"hoverEvent":{"action":"show_text","value":"Aktif cooldown'ları listele"}},{"text":"    "},{"text":"⏩ CD Sıfırla","color":"green","clickEvent":{"action":"run_command","value":"/function custom:ame/cd/reset"},"hoverEvent":{"action":"show_text","value":"Kendi CD'lerini sıfırla (AME epoch)"}}]
tellraw @s [{"text":"  "},{"text":"⚙ Config","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom:ame/config"},"hoverEvent":{"action":"show_text","value":"CD sürelerini görüntüle"}},{"text":"    "},{"text":"ℹ Durum","color":"aqua","clickEvent":{"action":"run_command","value":"/function custom:ame/status"},"hoverEvent":{"action":"show_text","value":"AME entegrasyon durumu"}}]
tellraw @s [{"text":"  "},{"text":"🔒 Yetki Sync","color":"gold","clickEvent":{"action":"run_command","value":"/function custom:ame/perm/sync"},"hoverEvent":{"action":"show_text","value":"ap.admin ↔ macro.admin senkronize et"}}]
tellraw @s [{"text":"◀ Geri","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom:menu"}}]
execute if entity @s[tag=ap.owner] run tellraw @s [{"text":"  "},{"text":"⚠ Kaldır","color":"dark_red","clickEvent":{"action":"run_command","value":"/function custom:uninstall/menu"},"hoverEvent":{"action":"show_text","value":"AdminPower'ı tamamen kaldır (sadece owner)"}}]

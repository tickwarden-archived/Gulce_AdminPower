# ╔══════════════════════════════════════════════════════════╗
# ║  AdminPower × AME — TAM KALDIRMA (UNINSTALL)           ║
# ║  /function custom:uninstall/run                         ║
# ╚══════════════════════════════════════════════════════════╝
# UYARI: Bu işlem GERİ ALINAMAZ. Tüm AP verisi silinir.
# Onay için: /function custom:uninstall/confirm

tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"⚠ UNINSTALL","color":"red","bold":true},{"text":" — Tüm veri silinecek!","color":"yellow"}]
tellraw @s [{"text":"  Silecekler: Scoreboard'lar, storage, tag'ler, AME config/cooldowns","color":"gray"}]
tellraw @s [{"text":"  Onaylamak için: ","color":"gray"},{"text":"[UNINSTALL ONAYLA]","color":"red","bold":true,click_event:{"action":"run_command","command":"/function custom:uninstall/confirm"},hover_event:{"action":"show_text","value":"Bu işlem geri alınamaz!"}}]
tellraw @s [{"text":"  İptal: Bu mesajı görmezden gel","color":"dark_gray","italic":true}]

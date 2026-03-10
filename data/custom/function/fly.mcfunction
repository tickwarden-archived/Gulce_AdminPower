# Fly toggle: ap.flying tag ile durum takibi
# ── Açık → kapat ──────────────────────────────
# HATA DÜZELTİLDİ: Eski sürümde tag kaldırıldıktan sonra
# "unless ap.flying" dalı da tetikleniyordu — uçuş hiç kapanmıyordu.
# Düzeltme: return ile fonksiyondan erken çıkış yapılıyor.
execute if entity @s[tag=ap.flying] run effect clear @s minecraft:levitation
execute if entity @s[tag=ap.flying] run tellraw @s {"text":"[AdminPower] ✈ Uçuş kapatıldı!","color":"red"}
execute if entity @s[tag=ap.flying] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if entity @s[tag=ap.flying] run return run tag @s remove ap.flying
# ── Kapalı → aç (yukarıda return çalıştıysa buraya ulaşılmaz) ──
effect give @s minecraft:levitation infinite 0 true
tag @s add ap.flying
tellraw @s [{"text":"[AdminPower] ✈ Uçuş aktif (levitation)! ","color":"aqua"},{"text":"Gerçek uçuş için: ","color":"gray"},{"text":"/gamemode creative","color":"yellow","click_event":{"action":"suggest_command","command":"/gamemode creative"}}]
playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 1 1

# ════════════════════════════════════════════════
# night_vision_all toggle — BUG FIX
# ════════════════════════════════════════════════
# ESKİ BUG: tag kaldırıldıktan sonra unless dalı TRUE → effect hemen yeniden verilir.
# DÜZELTİLDİ: "return run" ile kapanma dalı fonksiyondan çıkar.
# ════════════════════════════════════════════════
execute if score $ame ap_flags matches 1 run return run function custom:ame/toggle/night_vision

# ── Açık → kapat ──
execute if entity @s[tag=ap.nv_all] run effect clear @a minecraft:night_vision
execute if entity @s[tag=ap.nv_all] run tag @s remove ap.nv_all
execute if entity @s[tag=ap.nv_all] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.5 1
execute if entity @s[tag=ap.nv_all] run tellraw @a {"text":"[AdminPower] 👁 Gece görüşü kapatıldı!","color":"gray"}
execute if entity @s[tag=!ap.nv_all] run return 0

# ── Kapalı → aç ──
effect give @a minecraft:night_vision 99999 0 true
tag @s add ap.nv_all
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 2
tellraw @a {"text":"[AdminPower] 👁 Tüm oyuncular gece görebiliyor!","color":"aqua"}

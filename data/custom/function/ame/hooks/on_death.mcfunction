# ╔══════════════════════════════════════════════════════════╗
# ║  AdminPower v1.4.0 — ame/hooks/on_death              ║
# ║  macro:hook → player_death eventi                      ║
# ║  @s = ölen oyuncu                                     ║
# ╚══════════════════════════════════════════════════════════╝

# Freeze tag'ini temizle
tag @s remove ap.freezed

# Ölüm logu (sadece eğer ölüm logu aktifse)
execute if score @s ap_perm matches 1.. run tellraw @a[tag=macro.admin] [{"text":"[AdminPower] ","color":"gold"},{"text":"💀 "},{"selector":"@s"},{"text":" öldü.","color":"gray"}]

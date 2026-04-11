# ╔══════════════════════════════════════════════════════════╗
# ║  AdminPower v1.4.0 — ame/hooks/on_respawn            ║
# ║  macro:hook → player_respawn eventi                    ║
# ║  @s = yeniden doğan oyuncu                            ║
# ╚══════════════════════════════════════════════════════════╝

# Freeze tag'ini temizle (ölünce freeze kalmasın)
tag @s remove ap.freezed

# Trigger'ları yeniden aktifleştir (ölümden sonra disable olabilir)
execute if entity @s[tag=op] run scoreboard players enable @s ap_main_menu
execute if entity @s[tag=op] run scoreboard players enable @s ap_heal_self
execute if entity @s[tag=op] run scoreboard players enable @s ap_feed_self
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_freeze_self

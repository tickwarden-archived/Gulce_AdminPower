# ╔══════════════════════════════════════════════════════════╗
# ║  AdminPower v1.4.0 — ame/hooks/on_join               ║
# ║  macro:hook → player_join eventi                       ║
# ║  @s = katılan oyuncu                                   ║
# ╚══════════════════════════════════════════════════════════╝

# ── Perm sync: admin/owner tag'i ile macro.admin ver ─────
execute if entity @s[tag=owner] run tag @s add macro.admin
execute if entity @s[tag=macro.admin] run scoreboard players set @s ap_perm 4
execute if entity @s[tag=admin] unless entity @s[tag=macro.admin] run scoreboard players set @s ap_perm 3

# ── op tag varsa trigger'ları aktifleştir ────────────────
execute if entity @s[tag=op] run scoreboard players enable @s ap_give_tools
execute if entity @s[tag=op] run scoreboard players enable @s ap_clear_weather
execute if entity @s[tag=op] run scoreboard players enable @s ap_main_menu
execute if entity @s[tag=op] run scoreboard players enable @s ap_rain_weather
execute if entity @s[tag=op] run scoreboard players enable @s ap_toggle_day
execute if entity @s[tag=op] run scoreboard players enable @s ap_toggle_night
execute if entity @s[tag=op] run scoreboard players enable @s ap_feed_self
execute if entity @s[tag=op] run scoreboard players enable @s ap_heal_self
execute if entity @s[tag=op] run scoreboard players enable @s ap_speed_boost
execute if entity @s[tag=op] run scoreboard players enable @s ap_creative
execute if entity @s[tag=op] run scoreboard players enable @s ap_multiCmd

# ── mod+ trigger'ları ─────────────────────────────────────
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_give_armor
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_freeze_self
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_tp_spawn
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_give_xp
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_invisibility
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_fire_resist
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_give_diamond
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_give_netherite
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_macro_self
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_kill_mobs
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_night_vision
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_arrow_self
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_smite_trigger
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_starter_self
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_flag_list
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_vanish
execute if score @s ap_perm matches 2.. run scoreboard players enable @s ap_random_tp
execute if score @s ap_perm matches 3.. run scoreboard players enable @s ap_reload

# ── Hoş geldin mesajı (sadece admin+) ───────────────────
execute if score @s ap_perm matches 3.. run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"👑 Admin komutları aktif. /function custom:menu","color":"yellow"}]

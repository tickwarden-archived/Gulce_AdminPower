# ╔══════════════════════════════════════════════════════════╗
# ║  AdminPower v1.4.0 — uninstall/remove_scoreboards     ║
# ║  v1.4.0: ap_cd_* ve ap_clickedItem KALDIRILDI         ║
# ╚══════════════════════════════════════════════════════════╝

# Trigger objectives
scoreboard objectives remove ap_clear_weather
scoreboard objectives remove ap_feed_self
scoreboard objectives remove ap_give_tools
scoreboard objectives remove ap_heal_self
scoreboard objectives remove ap_rain_weather
scoreboard objectives remove ap_speed_boost
scoreboard objectives remove ap_toggle_day
scoreboard objectives remove ap_toggle_night
scoreboard objectives remove ap_main_menu
scoreboard objectives remove ap_creative
scoreboard objectives remove ap_multiCmd
scoreboard objectives remove ap_give_armor
scoreboard objectives remove ap_freeze_self
scoreboard objectives remove ap_tp_spawn
scoreboard objectives remove ap_give_xp
scoreboard objectives remove ap_invisibility
scoreboard objectives remove ap_fire_resist
scoreboard objectives remove ap_give_diamond
scoreboard objectives remove ap_give_netherite
scoreboard objectives remove ap_macro_self
scoreboard objectives remove ap_kill_mobs
scoreboard objectives remove ap_night_vision
scoreboard objectives remove ap_arrow_self
scoreboard objectives remove ap_smite_trigger
scoreboard objectives remove ap_starter_self
scoreboard objectives remove ap_reload
scoreboard objectives remove ap_flag_list
scoreboard objectives remove ap_vanish
scoreboard objectives remove ap_random_tp

# Durum objectives
scoreboard objectives remove ap_flags
scoreboard objectives remove ap_perm
scoreboard objectives remove ap_tokens
scoreboard objectives remove ap_warns

# AME cooldown storage'ı temizle (ap_cd_* artık macro:engine içinde)
data remove storage macro:engine cooldowns.steve
# Not: tüm oyuncular için: macro:engine cooldowns'u sıfırla
data remove storage macro:engine cooldowns

tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"✅ Tüm scoreboard objective'leri kaldırıldı.","color":"green"}]

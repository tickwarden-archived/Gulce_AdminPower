# ╔═══════════════════════════════════════════════════════╗
# ║  AdminPower v1.4.0 — LOAD                           ║
# ║  Gereksinim: macroEngine v3.0+ (zorunlu)            ║
# ║  CD sistemi tamamen AME epoch-tabanlı               ║
# ╚═══════════════════════════════════════════════════════╝

# ── Objectives: sadece ilk kurulumda ekle ────────────────
execute if data storage custom:meta {ap_objectives_done:1b} run function custom:load/post_objectives
execute if data storage custom:meta {ap_objectives_done:1b} run return 0

function gap_load:set_meta

# ── Trigger Objectives ───────────────────────────────────
scoreboard objectives add ap_clear_weather trigger
scoreboard objectives add ap_feed_self trigger
scoreboard objectives add ap_give_tools trigger
scoreboard objectives add ap_heal_self trigger
scoreboard objectives add ap_rain_weather trigger
scoreboard objectives add ap_speed_boost trigger
scoreboard objectives add ap_toggle_day trigger
scoreboard objectives add ap_toggle_night trigger
scoreboard objectives add ap_main_menu trigger
scoreboard objectives add ap_creative trigger
scoreboard objectives add ap_multiCmd trigger

# ── v1.3.3 Trigger Objectives (ap_perm >= 2 / mod+) ─────
scoreboard objectives add ap_give_armor trigger
scoreboard objectives add ap_freeze_self trigger
scoreboard objectives add ap_tp_spawn trigger
scoreboard objectives add ap_give_xp trigger
scoreboard objectives add ap_invisibility trigger
scoreboard objectives add ap_fire_resist trigger
scoreboard objectives add ap_give_diamond trigger
scoreboard objectives add ap_give_netherite trigger
scoreboard objectives add ap_macro_self trigger

# ── v1.3.4 Trigger Objectives ───────────────────────────
scoreboard objectives add ap_kill_mobs trigger
scoreboard objectives add ap_night_vision trigger
scoreboard objectives add ap_arrow_self trigger
scoreboard objectives add ap_smite_trigger trigger
scoreboard objectives add ap_starter_self trigger
scoreboard objectives add ap_reload trigger
scoreboard objectives add ap_flag_list trigger

# ── v1.3.6 Trigger Objectives ───────────────────────────
scoreboard objectives add ap_vanish trigger
scoreboard objectives add ap_random_tp trigger

# ── Durum Objectives ─────────────────────────────────────
# v1.4.0: ap_cd_* objective'lerin TAMAMI KALDIRILDI.
# Cooldown: AME macro:cooldown (epoch-tabanlı, objective'siz)
# Wand click: AME macro.rightClick (ap_clickedItem KALDIRILDI)
scoreboard objectives add ap_flags dummy
scoreboard objectives add ap_perm dummy
scoreboard objectives add ap_tokens dummy
scoreboard objectives add ap_warns dummy
scoreboard objectives add ap_tmp dummy

# Objectives ilk kez eklendi — işaretle
data modify storage custom:meta ap_objectives_done set value 1b

# Her reload'dan sonra buraya atlanır
function custom:load/post_objectives

function gap_load:info with storage gap:meta
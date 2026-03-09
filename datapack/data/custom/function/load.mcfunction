# ╔═══════════════════════════════════════════════╗
# ║  AdminPower v1.3.4 — LOAD                    ║
# ║  Countdown CD Sistemi                         ║
# ╚═══════════════════════════════════════════════╝

# ── Objectives: sadece ilk kurulumda ekle ───────
# storage custom:meta {ap_objectives_done:1b} varsa atla.
# Böylece her /reload'da 74× "already exists" hatası olmaz.
execute if data storage custom:meta {ap_objectives_done:1b} run function custom:load/post_objectives
execute if data storage custom:meta {ap_objectives_done:1b} run return 0

# ── Trigger Objectives ──────────────────────────
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

# ── v1.3.3 Trigger Objectives (ap_perm >= 2 / mod+) ────────
scoreboard objectives add ap_give_armor trigger
scoreboard objectives add ap_freeze_self trigger
scoreboard objectives add ap_tp_spawn trigger
scoreboard objectives add ap_give_xp trigger
scoreboard objectives add ap_invisibility trigger
scoreboard objectives add ap_fire_resist trigger
scoreboard objectives add ap_give_diamond trigger
scoreboard objectives add ap_give_netherite trigger
scoreboard objectives add ap_macro_self trigger
# ── v1.3.4 Trigger Objectives ───────────────────────────────
scoreboard objectives add ap_kill_mobs trigger
scoreboard objectives add ap_night_vision trigger
scoreboard objectives add ap_arrow_self trigger
scoreboard objectives add ap_smite_trigger trigger
scoreboard objectives add ap_starter_self trigger
scoreboard objectives add ap_reload trigger
scoreboard objectives add ap_flag_list trigger

# ── Cooldown Objectives (tick sayacı, 0=hazır) ──
scoreboard objectives add ap_flags dummy
scoreboard objectives add ap_tmp dummy
scoreboard objectives add ap_cd_fb dummy
scoreboard objectives add ap_cd_ex dummy
scoreboard objectives add ap_cd_dm dummy
scoreboard objectives add ap_cd_fz dummy
scoreboard objectives add ap_cd_el dummy
scoreboard objectives add ap_cd_st dummy
scoreboard objectives add ap_cd_sp dummy
scoreboard objectives add ap_cd_iv dummy
scoreboard objectives add ap_cd_rl dummy
scoreboard objectives add ap_cd_hl dummy
scoreboard objectives add ap_cd_fd dummy
scoreboard objectives add ap_cd_gt dummy
scoreboard objectives add ap_cd_xp dummy
scoreboard objectives add ap_cd_mc dummy
scoreboard objectives add ap_cd_tp dummy
scoreboard objectives add ap_cd_sn dummy
scoreboard objectives add ap_cd_ta dummy
scoreboard objectives add ap_cd_te dummy
scoreboard objectives add ap_cd_lt dummy
scoreboard objectives add ap_cd_bc dummy
scoreboard objectives add ap_cd_rp dummy
scoreboard objectives add ap_tokens dummy
scoreboard objectives add ap_perm dummy

# ── Item Click Objectives ────────────────────────
scoreboard objectives add ap_clickedItem minecraft.used:minecraft.carrot_on_a_stick

# ── Sabitler ────────────────────────────────────



scoreboard objectives add ap_cd_ha dummy
scoreboard objectives add ap_cd_fa dummy
scoreboard objectives add ap_cd_na dummy
scoreboard objectives add ap_cd_ts dummy

# ── Yeni CD Hedefleri (v1.2.0) ───────────────────
scoreboard objectives add ap_cd_bl dummy
scoreboard objectives add ap_cd_ca dummy
scoreboard objectives add ap_cd_sa dummy
scoreboard objectives add ap_cd_fk dummy
scoreboard objectives add ap_cd_sv dummy
scoreboard objectives add ap_cd_wt dummy
scoreboard objectives add ap_cd_garm dummy
scoreboard objectives add ap_cd_gto dummy
scoreboard objectives add ap_cd_gda dummy

# ── v1.3.3 CD Hedefleri (yeni trigger'lar) ───────────────────
scoreboard objectives add ap_cd_frs dummy
scoreboard objectives add ap_cd_tps dummy
scoreboard objectives add ap_cd_inv dummy
scoreboard objectives add ap_cd_fr dummy
# ── v1.3.4 CD Hedefleri ─────────────────────────────────────
scoreboard objectives add ap_cd_km dummy
scoreboard objectives add ap_cd_nv dummy
scoreboard objectives add ap_cd_ar dummy
scoreboard objectives add ap_cd_sst dummy
# Objectives ilk kez eklendi — işaretle
data modify storage custom:meta ap_objectives_done set value 1b

# Reload'dan sonraki her çalışmada buraya atlanır
function custom:load/post_objectives

# Durum bayrakları
# $time_frozen ve $mob_spawn sadece ilk kurulumda (version_first_install) init edilir
# load'da sıfırlanmaz — toggle durumu reload'dan sonra korunur

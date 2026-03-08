# ╔═══════════════════════════════════════════════╗
# ║  AdminPower v1.0.0-pre1 — LOAD               ║
# ║  Countdown CD Sistemi                        ║
# ╚═══════════════════════════════════════════════╝

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
scoreboard players set $ame ap_flags 0

# ── AME Algılama ────────────────────────────────
execute if data storage macro:engine {global:{}} run scoreboard players set $ame ap_flags 1
execute if score $ame ap_flags matches 1 run function custom:ame/on_load

# ── Versiyon Kontrolü ───────────────────────────
function custom:version_check

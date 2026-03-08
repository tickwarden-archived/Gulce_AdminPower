# ╔═══════════════════════════════════════════════╗
# ║  AdminPower v1.0.0-pre1 — TICK               ║
# ║  Countdown CD: her tick 1 azaltır            ║
# ╚═══════════════════════════════════════════════╝

# ── CD sayaçlarını geri say (0'ın altına düşme) ─
scoreboard players remove @a[scores={ap_cd_fb=1..}] ap_cd_fb 1
scoreboard players remove @a[scores={ap_cd_ex=1..}] ap_cd_ex 1
scoreboard players remove @a[scores={ap_cd_dm=1..}] ap_cd_dm 1
scoreboard players remove @a[scores={ap_cd_fz=1..}] ap_cd_fz 1
scoreboard players remove @a[scores={ap_cd_el=1..}] ap_cd_el 1
scoreboard players remove @a[scores={ap_cd_st=1..}] ap_cd_st 1
scoreboard players remove @a[scores={ap_cd_sp=1..}] ap_cd_sp 1
scoreboard players remove @a[scores={ap_cd_iv=1..}] ap_cd_iv 1
scoreboard players remove @a[scores={ap_cd_rl=1..}] ap_cd_rl 1
scoreboard players remove @a[scores={ap_cd_hl=1..}] ap_cd_hl 1
scoreboard players remove @a[scores={ap_cd_fd=1..}] ap_cd_fd 1
scoreboard players remove @a[scores={ap_cd_gt=1..}] ap_cd_gt 1
scoreboard players remove @a[scores={ap_cd_xp=1..}] ap_cd_xp 1
scoreboard players remove @a[scores={ap_cd_tp=1..}] ap_cd_tp 1
scoreboard players remove @a[scores={ap_cd_sn=1..}] ap_cd_sn 1
scoreboard players remove @a[scores={ap_cd_ta=1..}] ap_cd_ta 1
scoreboard players remove @a[scores={ap_cd_te=1..}] ap_cd_te 1
scoreboard players remove @a[scores={ap_cd_lt=1..}] ap_cd_lt 1
scoreboard players remove @a[scores={ap_cd_bc=1..}] ap_cd_bc 1
scoreboard players remove @a[scores={ap_cd_rp=1..}] ap_cd_rp 1
scoreboard players remove @a[scores={ap_cd_mc=1..}] ap_cd_mc 1

# ── Dondurulmuş oyuncuları yerinde tut ──────────
execute as @a[tag=ap.freezed,gamemode=!spectator] at @s run tp @s @s

# ── Item sağ tık dispatch ────────────────────────
execute as @a[scores={ap_clickedItem=1..}] at @s run function custom:items/dispatch
scoreboard players set @a ap_clickedItem 0

# ── Trigger enable (sadece op tag'li oyuncular) ─
scoreboard players enable @a[tag=op] ap_give_tools
scoreboard players enable @a[tag=op] ap_clear_weather
scoreboard players enable @a[tag=op] ap_main_menu
scoreboard players enable @a[tag=op] ap_rain_weather
scoreboard players enable @a[tag=op] ap_toggle_day
scoreboard players enable @a[tag=op] ap_toggle_night
scoreboard players enable @a[tag=op] ap_feed_self
scoreboard players enable @a[tag=op] ap_heal_self
scoreboard players enable @a[tag=op] ap_speed_boost
scoreboard players enable @a[tag=op] ap_creative
scoreboard players enable @a[tag=op] ap_multiCmd

# ── Trigger aksiyonları ─────────────────────────
execute as @a[scores={ap_clear_weather=1..}] at @s run function custom:weather_clear
scoreboard players set @a[scores={ap_clear_weather=1..}] ap_clear_weather 0

execute as @a[scores={ap_rain_weather=1..}] at @s run function custom:rain
scoreboard players set @a[scores={ap_rain_weather=1..}] ap_rain_weather 0

execute as @a[scores={ap_toggle_day=1..}] at @s run function custom:set_day
scoreboard players set @a[scores={ap_toggle_day=1..}] ap_toggle_day 0

execute as @a[scores={ap_toggle_night=1..}] at @s run function custom:util_day_time
scoreboard players set @a[scores={ap_toggle_night=1..}] ap_toggle_night 0

execute as @a[scores={ap_feed_self=1..}] at @s run function custom:util_feed_self
scoreboard players set @a[scores={ap_feed_self=1..}] ap_feed_self 0

execute as @a[scores={ap_heal_self=1..}] at @s run function custom:util_heal_self
scoreboard players set @a[scores={ap_heal_self=1..}] ap_heal_self 0

execute as @a[scores={ap_speed_boost=1..}] at @s run function custom:speed_boost
scoreboard players set @a[scores={ap_speed_boost=1..}] ap_speed_boost 0

execute as @a[scores={ap_give_tools=1..}] at @s run function custom:give_tools
scoreboard players set @a[scores={ap_give_tools=1..}] ap_give_tools 0

execute as @a[scores={ap_creative=1..}] at @s run function custom:creative_mode
scoreboard players set @a[scores={ap_creative=1..}] ap_creative 0

execute as @a[scores={ap_main_menu=1..}] at @s run function custom:menu
scoreboard players set @a[scores={ap_main_menu=1..}] ap_main_menu 0

execute as @a[scores={ap_multiCmd=1..}] at @s run function custom:macros/run_cmd with entity @s SelectedItem.components."minecraft:custom_data"
scoreboard players set @a[scores={ap_multiCmd=1..}] ap_multiCmd 0

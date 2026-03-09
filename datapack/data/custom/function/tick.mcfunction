# ╔═══════════════════════════════════════════════╗
# ║  AdminPower v1.2.0 — TICK               ║
# ║  Countdown CD: her tick 1 azaltır            ║
# ╚═══════════════════════════════════════════════╝

# ── CD sayaçlarını geri say (0'ın altına düşme) ─
# ── CD Sayaçları (AME yokken scoreboard, AME varken epoch-bazlı) ─
execute if score $ame ap_flags matches 0 run function custom:tick/scoreboard_cd

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

# ── Yeni CD sayaçları (v1.1.0) ───────────────────

# ── Yeni CD sayaçları (v1.2.0) ───────────────────

# ╔═══════════════════════════════════════════════╗
# ║  AdminPower v1.3.7 — TICK               ║
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

# ── Trigger enable (ap_perm >= 2 / mod+) — v1.3.3 ──────────
scoreboard players enable @a[scores={ap_perm=2..}] ap_give_armor
scoreboard players enable @a[scores={ap_perm=2..}] ap_freeze_self
scoreboard players enable @a[scores={ap_perm=2..}] ap_tp_spawn
scoreboard players enable @a[scores={ap_perm=2..}] ap_give_xp
scoreboard players enable @a[scores={ap_perm=2..}] ap_invisibility
scoreboard players enable @a[scores={ap_perm=2..}] ap_fire_resist
scoreboard players enable @a[scores={ap_perm=2..}] ap_give_diamond
scoreboard players enable @a[scores={ap_perm=2..}] ap_give_netherite
scoreboard players enable @a[scores={ap_perm=2..}] ap_macro_self
# ── v1.3.4 Trigger enable (ap_perm >= 2) ────────────────────
scoreboard players enable @a[scores={ap_perm=2..}] ap_kill_mobs
scoreboard players enable @a[scores={ap_perm=2..}] ap_night_vision
scoreboard players enable @a[scores={ap_perm=2..}] ap_arrow_self
scoreboard players enable @a[scores={ap_perm=2..}] ap_smite_trigger
scoreboard players enable @a[scores={ap_perm=2..}] ap_starter_self
scoreboard players enable @a[scores={ap_perm=2..}] ap_flag_list
# reload: ap_perm >= 3 (kontrol exec içinde)
scoreboard players enable @a[scores={ap_perm=3..}] ap_reload

# ── v1.3.6 Trigger enable ───────────────────────────────────
scoreboard players enable @a[scores={ap_perm=2..}] ap_vanish
scoreboard players enable @a[scores={ap_perm=2..}] ap_random_tp
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

execute as @a[scores={ap_multiCmd=1..}] at @s run function custom:macros/run_cmd with entity @s selected_item.components."minecraft:custom_data"
scoreboard players set @a[scores={ap_multiCmd=1..}] ap_multiCmd 0

# ── v1.3.3 Trigger Aksiyonları (ap_perm >= 2) ───────────────
execute as @a[scores={ap_give_armor=1..}] at @s run function custom:give_armor_self
scoreboard players set @a[scores={ap_give_armor=1..}] ap_give_armor 0

execute as @a[scores={ap_freeze_self=1..}] at @s run function custom:freeze_self_trigger
scoreboard players set @a[scores={ap_freeze_self=1..}] ap_freeze_self 0

execute as @a[scores={ap_tp_spawn=1..}] at @s run function custom:tp_spawn_self
scoreboard players set @a[scores={ap_tp_spawn=1..}] ap_tp_spawn 0

execute as @a[scores={ap_give_xp=1..}] at @s run function custom:give_xp_self
scoreboard players set @a[scores={ap_give_xp=1..}] ap_give_xp 0

execute as @a[scores={ap_invisibility=1..}] at @s run function custom:invisibility_self
scoreboard players set @a[scores={ap_invisibility=1..}] ap_invisibility 0

execute as @a[scores={ap_fire_resist=1..}] at @s run function custom:fire_resist_self
scoreboard players set @a[scores={ap_fire_resist=1..}] ap_fire_resist 0

execute as @a[scores={ap_give_diamond=1..}] at @s run function custom:give_diamond_self
scoreboard players set @a[scores={ap_give_diamond=1..}] ap_give_diamond 0

execute as @a[scores={ap_give_netherite=1..}] at @s run function custom:give_netherite_self
scoreboard players set @a[scores={ap_give_netherite=1..}] ap_give_netherite 0

# ap_macro_self — SelectedItem.components makro dispatcher (AME $ makro bağlantısı)
execute as @a[scores={ap_macro_self=1..}] at @s if data entity @s selected_item.components."minecraft:custom_data".ap_action run function custom:macros/self_action with entity @s selected_item.components."minecraft:custom_data"
execute as @a[scores={ap_macro_self=1..}] at @s unless data entity @s selected_item.components."minecraft:custom_data".ap_action run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Eldeki esyada ap_action verisi yok!","color":"red"},{"text":" /give @s carrot_on_a_stick[minecraft:custom_data={ap_action:'give_armor'}]","color":"yellow","italic":true}]
scoreboard players set @a[scores={ap_macro_self=1..}] ap_macro_self 0


# ── v1.3.4 Trigger Dispatch ─────────────────────────────────
execute as @a[scores={ap_kill_mobs=1..}] at @s run function custom:kill_mobs_trigger
scoreboard players set @a[scores={ap_kill_mobs=1..}] ap_kill_mobs 0

execute as @a[scores={ap_night_vision=1..}] at @s run function custom:night_vision_trigger
scoreboard players set @a[scores={ap_night_vision=1..}] ap_night_vision 0

execute as @a[scores={ap_arrow_self=1..}] at @s run function custom:arrow_self_trigger
scoreboard players set @a[scores={ap_arrow_self=1..}] ap_arrow_self 0

execute as @a[scores={ap_smite_trigger=1..}] at @s run function custom:smite_all_trigger
scoreboard players set @a[scores={ap_smite_trigger=1..}] ap_smite_trigger 0

execute as @a[scores={ap_starter_self=1..}] at @s run function custom:starter_self_trigger
scoreboard players set @a[scores={ap_starter_self=1..}] ap_starter_self 0

execute as @a[scores={ap_reload=1..}] at @s run function custom:reload_trigger_wrapper
scoreboard players set @a[scores={ap_reload=1..}] ap_reload 0

execute as @a[scores={ap_flag_list=1..}] at @s run function custom:flag_list_trigger_wrapper
scoreboard players set @a[scores={ap_flag_list=1..}] ap_flag_list 0

# ── Yeni CD sayaçları (v1.1.0) ───────────────────

# ── Yeni CD sayaçları (v1.2.0) ───────────────────

# ── v1.3.6 Trigger Dispatch ──────────────────────────────────
execute as @a[scores={ap_vanish=1..}] at @s run function custom:exec/vanish_toggle
scoreboard players set @a[scores={ap_vanish=1..}] ap_vanish 0

execute as @a[scores={ap_random_tp=1..}] at @s run function custom:exec/random_tp
scoreboard players set @a[scores={ap_random_tp=1..}] ap_random_tp 0

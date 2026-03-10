# ════════════════════════════════════════════════
# custom:ame/toggle/sync_on_load
# ════════════════════════════════════════════════
# Server restart sonrası macro:engine flags korunur.
# Bu fonksiyon flag state'lerini → scoreboard'a + gamerule'a uygular.
# ════════════════════════════════════════════════

# --- time_frozen sync ---
# Flag SET ise → gamerule kapat + scoreboard güncelle
execute if data storage macro:engine flags.ap_time_frozen run gamerule minecraft:advance_time false
execute if data storage macro:engine flags.ap_time_frozen run scoreboard players set #time_frozen ap_flags 1
execute unless data storage macro:engine flags.ap_time_frozen run gamerule minecraft:advance_time true
execute unless data storage macro:engine flags.ap_time_frozen run scoreboard players set #time_frozen ap_flags 0

# --- mob_spawn_off sync ---
execute if data storage macro:engine flags.ap_mob_spawn_off run gamerule minecraft:spawn_mobs false
execute if data storage macro:engine flags.ap_mob_spawn_off run scoreboard players set #mob_spawn ap_flags 0
execute unless data storage macro:engine flags.ap_mob_spawn_off run gamerule minecraft:spawn_mobs true
execute unless data storage macro:engine flags.ap_mob_spawn_off run scoreboard players set #mob_spawn ap_flags 1

# --- freeze sync: ap.freezed tag reload sonrası kaybolur → çöz ---
execute if data storage macro:engine flags.ap_frozen run data remove storage macro:engine flags.ap_frozen
# (Entity tag'leri NBT'de saklanmaz, reload sonrası freeze zorla kapatılır)

tellraw @a [{"text":"[AME] ","color":"aqua"},{"text":"Toggle durumları senkronize edildi.","color":"dark_aqua"}]

# --- pvp_off sync ---
execute if data storage macro:engine flags.ap_pvp_off run gamerule minecraft:pvp false
execute if data storage macro:engine flags.ap_pvp_off run scoreboard players set #pvp_on ap_flags 0
execute unless data storage macro:engine flags.ap_pvp_off run gamerule minecraft:pvp true
execute unless data storage macro:engine flags.ap_pvp_off run scoreboard players set #pvp_on ap_flags 1

# --- kinv_on sync ---
execute if data storage macro:engine flags.ap_kinv_on run gamerule minecraft:keep_inventory true
execute if data storage macro:engine flags.ap_kinv_on run scoreboard players set #kinv_on ap_flags 1
execute unless data storage macro:engine flags.ap_kinv_on run gamerule minecraft:keep_inventory false
execute unless data storage macro:engine flags.ap_kinv_on run scoreboard players set #kinv_on ap_flags 0


# ╔══════════════════════════════════════════════════════════╗
# ║  AdminPower v1.4.0 × AME v3 — on_load                 ║
# ║  Her reload'da AME yüklendikten sonra çalışır          ║
# ╚══════════════════════════════════════════════════════════╝
tellraw @a {"text":"[AdminPower] ✅ AME v3 algılandı — gelişmiş özellikler aktif!","color":"aqua"}

# ════════════════════════════════════════════════════════════
# BÖLÜM 1 — CD Konfigürasyonu
# macro:config'e kaydedilir, admin değiştirebilir.
# ════════════════════════════════════════════════════════════

# Temel aksiyonlar
data modify storage macro:input key set value "ap_cd_fireball"
data modify storage macro:input value set value 100
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_explosion"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_diamond"
data modify storage macro:input value set value 2400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_freeze"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_elytra"
data modify storage macro:input value set value 6000
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_starter"
data modify storage macro:input value set value 12000
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_speed"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_invincible"
data modify storage macro:input value set value 2400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_loot"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_heal"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_feed"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_tools"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_xp"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_heal_all"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_feed_all"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_netherite"
data modify storage macro:input value set value 6000
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_tp_spawn"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_blindness"
data modify storage macro:input value set value 400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_confusion"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_smite"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_fake_death"
data modify storage macro:input value set value 400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_speed_all"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_thunder"
data modify storage macro:input value set value 400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_give_armor"
data modify storage macro:input value set value 6000
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_give_totem"
data modify storage macro:input value set value 2400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_god_all"
data modify storage macro:input value set value 3600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_kill_mobs"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_arrow_self"
data modify storage macro:input value set value 40
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_starter_self"
data modify storage macro:input value set value 12000
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_freeze_self"
data modify storage macro:input value set value 400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_tp_spawn_self"
data modify storage macro:input value set value 400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_invisibility"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_fire_resist"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_broadcast"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_lightning"
data modify storage macro:input value set value 100
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_repair"
data modify storage macro:input value set value 400
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_summon"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_tp_all"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_tp_nearest"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_token_earn"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_multicmd"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_vanish"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_random_tp"
data modify storage macro:input value set value 600
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_bounce"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_warn"
data modify storage macro:input value set value 200
function custom:ame/config/set_default_int with storage macro:input {}

# ════════════════════════════════════════════════════════════
# BÖLÜM 2 — Event Kayıtları (duplicate korumalı)
# ════════════════════════════════════════════════════════════

# Önceki AP event handler'larını temizle (reload güvenliği)
data modify storage macro:input event set value "ap_fireball_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_explosion_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_ban_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_heal_all_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_lightning_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_tp_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_kick_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_god_all_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_multicmd_used"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_pvp_toggled"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_kinv_toggled"
function macro:event/unregister with storage macro:input {}

# Event kayıtları
data modify storage macro:input event set value "ap_fireball_used"
data modify storage macro:input func set value "custom:ame/events/fireball_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_explosion_used"
data modify storage macro:input func set value "custom:ame/events/explosion_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_ban_used"
data modify storage macro:input func set value "custom:ame/events/ban_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_heal_all_used"
data modify storage macro:input func set value "custom:ame/events/heal_all_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_lightning_used"
data modify storage macro:input func set value "custom:ame/events/lightning_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_tp_used"
data modify storage macro:input func set value "custom:ame/events/tp_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_kick_used"
data modify storage macro:input func set value "custom:ame/events/kick_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_god_all_used"
data modify storage macro:input func set value "custom:ame/events/god_all_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_multicmd_used"
data modify storage macro:input func set value "custom:ame/events/multicmd_log"
function macro:event/register with storage macro:input {}

# ════════════════════════════════════════════════════════════
# BÖLÜM 3 — AME Hook Kayıtları (v1.4.0 YENİ)
# macro:hook/bind → oyuncu olaylarına otomatik tepki
# ════════════════════════════════════════════════════════════

# Önceki hook'ları temizle (reload güvenliği için unbind gerekirse)
# Hook sistemi event'lere append eder; unregister yoksa duplicate olur.
# Geçici çözüm: hook event'lerini doğrudan sıfırla.
data remove storage macro:engine hook_binds

# on_player_join: trigger'ları aktifleştir, perm sync yap
data modify storage macro:input event set value "player_join"
data modify storage macro:input func set value "custom:ame/hooks/on_join"
function macro:hook/bind

# on_player_respawn: trigger'ları yeniden aktifleştir
data modify storage macro:input event set value "player_respawn"
data modify storage macro:input func set value "custom:ame/hooks/on_respawn"
function macro:hook/bind

# on_player_death: ölüm logu
data modify storage macro:input event set value "player_death"
data modify storage macro:input func set value "custom:ame/hooks/on_death"
function macro:hook/bind

# ════════════════════════════════════════════════════════════
# BÖLÜM 4 — Wand Kayıtları (v1.4.0 YENİ — macro:wand)
# macro.rightClick scoreboard → AME otomatik dispatch eder.
# ap_clickedItem + custom:items/dispatch'e gerek kalmadı.
# ════════════════════════════════════════════════════════════

# Wand listesini sıfırla (reload güvenliği)
data remove storage macro:engine wand_binds

data modify storage macro:input tag set value "menu_wand"
data modify storage macro:input func set value "custom:menu"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "heal_wand"
data modify storage macro:input func set value "custom:util_heal_self"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "speed_wand"
data modify storage macro:input func set value "custom:speed_boost"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "tp_wand"
data modify storage macro:input func set value "custom:tp_to_nearest"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "freeze_wand"
data modify storage macro:input func set value "custom:items/toggle_freeze"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "lightning_wand"
data modify storage macro:input func set value "custom:cd/check_lt"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "fireball_wand"
data modify storage macro:input func set value "custom:fireball"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "fly_wand"
data modify storage macro:input func set value "custom:fly"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "vanish_wand"
data modify storage macro:input func set value "custom:exec/vanish_toggle"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

data modify storage macro:input tag set value "random_tp_wand"
data modify storage macro:input func set value "custom:exec/random_tp"
data modify storage macro:input cmd set value ""
function macro:wand/register with storage macro:input {}

# ════════════════════════════════════════════════════════════
# BÖLÜM 5 — Diğer Sistem Başlatmaları
# ════════════════════════════════════════════════════════════
function custom:ame/triggers
function custom:ame/perm/sync
function custom:ame/toggle/sync_on_load

tellraw @a {"text":"[AdminPower] AME event, hook, wand ve CD config yüklendi.","color":"dark_aqua"}

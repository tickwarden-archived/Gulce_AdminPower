# ╔══════════════════════════════════════════════════════════╗
# ║  AdminPower × AME — on_load                            ║
# ║  AME algılandığında çalışır                            ║
# ╚══════════════════════════════════════════════════════════╝
tellraw @a {"text":"[AdminPower] ✅ AME algılandı — Gelişmiş özellikler aktif!","color":"aqua"}

# ────────────────────────────────────────────────────────────
# CD Konfigürasyonu (tick cinsinden, macro:config'e kaydedilir)
# Admin: /function custom:ame/config ile görüntüle/değiştir
# ────────────────────────────────────────────────────────────

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

# v1.1.0 CD'leri
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

# v1.2.0 CD'leri
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


# ── v1.3.4 CD Config'leri ─────────────────────────────────────
data modify storage macro:input key set value "ap_cd_kill_mobs"
data modify storage macro:input value set value 1200
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_arrow_self"
data modify storage macro:input value set value 40
function custom:ame/config/set_default_int with storage macro:input {}

data modify storage macro:input key set value "ap_cd_starter_self"
data modify storage macro:input value set value 12000
function custom:ame/config/set_default_int with storage macro:input {}

# ── v1.3.3 CD Config'leri (yeni trigger'lar) ─────────────────
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

# Yardımcı aksiyonlar
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

# ── Reload koruması: önceki event handler'ları temizle ─────────
# macro:event/register APPEND eder — her reload tekrar çalışmadan önce
# tüm AP event'lerini sıfırla, böylece duplicate handler oluşmaz.
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

# ────────────────────────────────────────────────────────────
# AME Event Kayıtları
# ────────────────────────────────────────────────────────────

# Orijinal events (v1.2.0)
data modify storage macro:input event set value "ap_fireball_used"
data modify storage macro:input func set value "custom:ame/events/fireball_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_explosion_used"
data modify storage macro:input func set value "custom:ame/events/explosion_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_ban_used"
data modify storage macro:input func set value "custom:ame/events/ban_log"
function macro:event/register with storage macro:input {}

# Yeni events (AME entegrasyonu)
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

tellraw @a {"text":"[AdminPower] AME event'leri ve CD config'leri yüklendi.","color":"dark_aqua"}

# ────────────────────────────────────────────────────────────
# AME Trigger Bağlamaları
# ────────────────────────────────────────────────────────────
function custom:ame/triggers

# ────────────────────────────────────────────────────────────
# Yetki Sync: Çevrimiçi admin/owner'lara macro.admin tag'i ver
# ────────────────────────────────────────────────────────────
function custom:ame/perm/sync

# ────────────────────────────────────────────────────────────
# Toggle State Sync (server restart sonrası macro:flag → gamerule)
# ────────────────────────────────────────────────────────────
function custom:ame/toggle/sync_on_load

# ── v1.3.6 CD Config'leri ─────────────────────────────────────
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

# ── v1.3.7 Event'leri ─────────────────────────────────────
data modify storage macro:input event set value "ap_pvp_toggled"
function macro:event/unregister with storage macro:input {}
data modify storage macro:input event set value "ap_kinv_toggled"
function macro:event/unregister with storage macro:input {}

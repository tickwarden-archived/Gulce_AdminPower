# ════════════════════════════════════════════════
# AME storage'dan AdminPower verilerini sil
# ════════════════════════════════════════════════

# Config'den ap_ key'leri sil
data remove storage macro:engine config.ap_cd_fireball
data remove storage macro:engine config.ap_cd_explosion
data remove storage macro:engine config.ap_cd_diamond
data remove storage macro:engine config.ap_cd_freeze
data remove storage macro:engine config.ap_cd_elytra
data remove storage macro:engine config.ap_cd_starter
data remove storage macro:engine config.ap_cd_speed
data remove storage macro:engine config.ap_cd_invincible
data remove storage macro:engine config.ap_cd_loot
data remove storage macro:engine config.ap_cd_heal
data remove storage macro:engine config.ap_cd_feed
data remove storage macro:engine config.ap_cd_tools
data remove storage macro:engine config.ap_cd_xp
data remove storage macro:engine config.ap_cd_heal_all
data remove storage macro:engine config.ap_cd_feed_all
data remove storage macro:engine config.ap_cd_netherite
data remove storage macro:engine config.ap_cd_tp_spawn
data remove storage macro:engine config.ap_cd_blindness
data remove storage macro:engine config.ap_cd_confusion
data remove storage macro:engine config.ap_cd_smite
data remove storage macro:engine config.ap_cd_fake_death
data remove storage macro:engine config.ap_cd_speed_all
data remove storage macro:engine config.ap_cd_thunder
data remove storage macro:engine config.ap_cd_give_armor
data remove storage macro:engine config.ap_cd_give_totem
data remove storage macro:engine config.ap_cd_god_all
data remove storage macro:engine config.ap_cd_broadcast
data remove storage macro:engine config.ap_cd_lightning
data remove storage macro:engine config.ap_cd_repair
data remove storage macro:engine config.ap_cd_summon
data remove storage macro:engine config.ap_cd_tp_all
data remove storage macro:engine config.ap_cd_tp_nearest
data remove storage macro:engine config.ap_cd_token_earn
data remove storage macro:engine config.ap_cd_multicmd

# Toggle flag'leri sil
data remove storage macro:engine flags.ap_time_frozen
data remove storage macro:engine flags.ap_mob_spawn_off
data remove storage macro:engine flags.ap_frozen
data remove storage macro:engine flags.ap_nv_all

# Event handler'ları unregister et
data modify storage macro:input event set value "ap_fireball_used"
data modify storage macro:input func set value "custom:ame/events/fireball_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_explosion_used"
data modify storage macro:input func set value "custom:ame/events/explosion_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_ban_used"
data modify storage macro:input func set value "custom:ame/events/ban_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_heal_all_used"
data modify storage macro:input func set value "custom:ame/events/heal_all_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_lightning_used"
data modify storage macro:input func set value "custom:ame/events/lightning_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_tp_used"
data modify storage macro:input func set value "custom:ame/events/tp_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_kick_used"
data modify storage macro:input func set value "custom:ame/events/kick_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_god_all_used"
data modify storage macro:input func set value "custom:ame/events/god_all_log"
function macro:event/unregister_one with storage macro:input {}

data modify storage macro:input event set value "ap_multicmd_used"
data modify storage macro:input func set value "custom:ame/events/multicmd_log"
function macro:event/unregister_one with storage macro:input {}

# Trigger bind'ları temizle (100-103)
data modify storage macro:input value set value 100
function macro:trigger/unbind with storage macro:input {}
data modify storage macro:input value set value 101
function macro:trigger/unbind with storage macro:input {}
data modify storage macro:input value set value 102
function macro:trigger/unbind with storage macro:input {}
data modify storage macro:input value set value 103
function macro:trigger/unbind with storage macro:input {}

# AP cooldown storage'ını temizle (tüm oyuncular için)
execute as @a run function custom:uninstall/clear_player_cooldowns

# Geçici storage'ları sil
data remove storage custom:meta ap_version
data remove storage custom:meta pack_format
data remove storage custom:fb x
data remove storage custom:fb y
data remove storage custom:fb z
data remove storage custom:fb py
data remove storage custom:fb px
data remove storage custom:fb pz
data remove storage custom:tmp player
data remove storage custom:tmp mode
data remove storage custom:tmp level
data remove storage custom:tmp entity

tellraw @s [{"text":"  ✓ AME storage temizlendi","color":"dark_green"}]

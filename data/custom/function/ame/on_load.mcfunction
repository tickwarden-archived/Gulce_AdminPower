# HF-006: AME algılandığında çalışır
tellraw @a {"text":"[AdminPower] AME algılandı! Gelişmiş özellikler aktif.","color":"aqua"}

# AME Config — cooldown sürelerini kaydet (tick cinsinden)
# Server admin bunları /function custom:ame/config ile değiştirebilir
data modify storage macro:input key set value "ap_cd_fireball"
data modify storage macro:input value set value 100
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_explosion"
data modify storage macro:input value set value 600
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_diamond"
data modify storage macro:input value set value 2400
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_freeze"
data modify storage macro:input value set value 1200
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_elytra"
data modify storage macro:input value set value 6000
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_starter"
data modify storage macro:input value set value 12000
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_speed"
data modify storage macro:input value set value 600
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_invincible"
data modify storage macro:input value set value 2400
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_loot"
data modify storage macro:input value set value 1200
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_heal"
data modify storage macro:input value set value 200
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_feed"
data modify storage macro:input value set value 200
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_tools"
data modify storage macro:input value set value 600
function macro:config/set_default with storage macro:input {}

data modify storage macro:input key set value "ap_cd_xp"
data modify storage macro:input value set value 1200
function macro:config/set_default with storage macro:input {}

# AME Event'lerini kaydet
data modify storage macro:input event set value "ap_fireball_used"
data modify storage macro:input func set value "custom:ame/events/fireball_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_explosion_used"
data modify storage macro:input func set value "custom:ame/events/explosion_log"
function macro:event/register with storage macro:input {}

data modify storage macro:input event set value "ap_ban_used"
data modify storage macro:input func set value "custom:ame/events/ban_log"
function macro:event/register with storage macro:input {}

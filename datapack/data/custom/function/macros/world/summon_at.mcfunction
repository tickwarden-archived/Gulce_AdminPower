# ═══════════════════════════════════════════════════════════
# Koordinata varlık çağır
#
# Kullanım:
#   /function custom:macros/world/summon_at {entity:"minecraft:creeper",x:0,y:64,z:0}
# ═══════════════════════════════════════════════════════════
$summon $(entity) $(x) $(y) $(z)
$tellraw @s [{"text":"[AdminPower] 👾 ","color":"red"},{"text":"$(entity)","color":"yellow"},{"text":" çağırıldı → $(x) $(y) $(z)","color":"gray"}]

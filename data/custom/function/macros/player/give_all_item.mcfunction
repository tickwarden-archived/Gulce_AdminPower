# ═══════════════════════════════════════════════════════════
# Herkese eşya ver
# Kullanım: /function custom:macros/player/give_all_item {item:"minecraft:diamond",count:16}
# Dialog: dynamic/run_command şablonundan çağrılır
# ═══════════════════════════════════════════════════════════
$give @a $(item) $(count)
$tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🎁 Herkese ","color":"white"},{"text":"$(count)x $(item)","color":"aqua"},{"text":" verildi!","color":"white"}]

# ═══════════════════════════════════════════════════════════
# Fireball macro — oyuncu konumundan yön vektörüyle ateş topu
#
# storage custom:fb → {x:0.0, y:64.0, z:0.0, px:0.0, py:0.0, pz:1.0}
#   x/y/z:   spawn konumu  |  px/py/pz: yön vektörü (±1.0 / 0.0)
# ═══════════════════════════════════════════════════════════
$summon minecraft:fireball $(x)d $(y)d $(z)d {power:[$(px)d,$(py)d,$(pz)d]}
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1
$tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🔥 Ateş topu! ","color":"red"},{"text":"($(px) $(py) $(pz))","color":"dark_gray"}]

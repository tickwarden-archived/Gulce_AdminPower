# Yakındaki oyuncuya totem partikülleri + mesaj
summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:{type:"minecraft:totem_of_undying"},Radius:2.0f,Duration:40}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"✨ Işık saçıyorsun!","color":"light_purple","bold":true}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 1.5

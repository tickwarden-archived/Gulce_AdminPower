# Sahte ölüm: YOU DIED başlığı + efektler + ses
effect give @s minecraft:blindness 3 10 true
effect give @s minecraft:weakness 3 10 true
title @s times 5 60 20
title @s title {"text":"YOU DIED","color":"dark_red","bold":true,"italic":true}
title @s subtitle {"text":"Şakayapıyorum :)","color":"gray"}
playsound minecraft:entity.player.death master @s ~ ~ ~ 1 1
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.3 1.5
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"👻 Şaka gibi değil mi? 😄","color":"yellow"}]

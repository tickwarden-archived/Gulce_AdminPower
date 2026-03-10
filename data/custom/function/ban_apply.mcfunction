# Hedef oyuncu olarak çalışır (@s = hedef)
tag @s add ap.banned

# Macro ile spectator moda al
data modify storage custom:tmp mode set value "spectator"
data modify storage custom:tmp player set value "@s"
function custom:macros/player/set_gamemode with storage custom:tmp

# Ceza efektleri
effect give @s minecraft:blindness infinite 5 true
effect give @s minecraft:weakness infinite 5 true
effect give @s minecraft:slowness infinite 5 true

# Ban başlığı
title @s times 10 80 20
title @s title {"text":"BANLANDIN","color":"dark_red","bold":true}
title @s subtitle {"text":"Sunucu yöneticisi tarafından engellendi","color":"red"}

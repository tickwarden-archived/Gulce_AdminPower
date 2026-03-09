# CD başlat
# CD — AME (epoch-bazlı) veya scoreboard (vanilla)
execute if score $ame ap_flags matches 1 run function custom:ame/cd/set
execute if score $ame ap_flags matches 0 run scoreboard players set @s ap_cd_bc 200

# Herkese büyük başlık göster
title @a times 10 70 20
title @a title {"text":"📢 DUYURU","color":"gold","bold":true}
title @a subtitle {"selector":"@s","color":"yellow"}
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# Macro ile chat'e renkli duyuru mesajı gönder
# Özel mesaj için → /function custom:macros/util/broadcast {msg:"...",color:"red"}
data modify storage custom:bc msg set value "Yönetici sunucu duyurusu yaptı!"
data modify storage custom:bc color set value "gold"
function custom:macros/util/broadcast with storage custom:bc

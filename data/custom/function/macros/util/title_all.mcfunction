# ═══════════════════════════════════════════════════════════
# Tüm oyunculara title + subtitle göster
#
# Kullanım:
#   /function custom:macros/util/title_all {title:"HAZIR OL!",subtitle:"Oyun 3 saniye sonra başlıyor",color:"red"}
#   color: başlık rengi (subtitle her zaman white)
# ═══════════════════════════════════════════════════════════
title @a times 10 60 20
$title @a title {"text":"$(title)","color":"$(color)","bold":true}
$title @a subtitle {"text":"$(subtitle)","color":"white"}
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1

# ═══════════════════════════════════════════════════════════
# Tüm oyunculara renkli mesaj gönder
#
# Kullanım:
#   /function custom:macros/util/broadcast {msg:"Sunucu 5 dakika sonra yeniden başlıyor!",color:"red"}
#   color: red | green | gold | aqua | yellow | white | dark_red | light_purple
# ═══════════════════════════════════════════════════════════
$tellraw @a [{"text":"[Duyuru] ","color":"gold","bold":true},{"text":"$(msg)","color":"$(color)"}]
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1

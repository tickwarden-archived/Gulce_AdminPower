# ═══════════════════════════════════════════════════════════
# perm/apply — Yetki uygulama macro'su
# HEDEF oyuncu olarak çalışır (execute as <hedef> run function ... with storage)
#
# Gerekli storage (custom:tmp):
#   level:       ap_perm skoru (1-4)
#   tag:         birincil yetki tag'i (ap.vip / ap.mod / ap.admin / ap.owner)
#   mode:        gamemode (creative / survival)
#   title_text:  başlık metni
#   title_color: başlık rengi
#   subtitle:    alt başlık
# ═══════════════════════════════════════════════════════════

# Perm skoru ve birincil tag → macro ile dinamik atama
$scoreboard players set @s ap_perm $(level)
$tag @s add $(tag)

# Gamemode → macros/player/set_gamemode (player="@s" = hedef)
data modify storage custom:tmp player set value "@s"
function custom:macros/player/set_gamemode with storage custom:tmp

# Başlık ve ses → macro ile dinamik
title @s times 10 60 20
$title @s title {"text":"$(title_text)","color":"$(title_color)","bold":true}
$title @s subtitle {"text":"$(subtitle)","color":"gray"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

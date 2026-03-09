# Tüm online oyunculara vanilla admin yetkisi ver:
#   • op tag (trigger sistemi erişimi)
#   • creative mod
#   • tüm cooldown sıfırla
#   • scoreboard'da ap_admin = 1

tag @a add op
gamemode creative @a
execute as @a run function custom:cd/reset_all
scoreboard players set @a ap_admin 1
title @a times 10 60 20
title @a title {"text":"YETKİ VERİLDİ","color":"green","bold":true}
title @a subtitle {"text":"op tag + creative + CD sıfırlandı","color":"gray"}
execute as @a run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"✅ Tüm oyunculara yetki paketi verildi (op tag + creative + ap_admin)","color":"green"}]

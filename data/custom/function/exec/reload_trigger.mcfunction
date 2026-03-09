# exec/reload_trigger — Sunucuyu Yeniden Yükle
# Sadece ap_perm >= 3 (admin+) — çok güçlü işlem
execute unless score @s ap_perm matches 3.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için admin+ (ap_perm >= 3) yetkisi gerekli.","color":"red"}]
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🔄 ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" sunucuyu yeniden yüklüyor...","color":"gray"}]
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.5 0.5
reload

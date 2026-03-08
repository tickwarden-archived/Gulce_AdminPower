# Önceki sürümü storage'dan oku ve göster
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"⚠ Farklı bir sürüm tespit edildi!","color":"red"}]
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"Önceki kayıt: ","color":"gray"},{"nbt":"ap_version","storage":"custom:meta","color":"yellow"},{"text":" → Şimdi: ","color":"gray"},{"text":"v1.2.0","color":"green"}]
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"Cooldown'lar sıfırlandı. Sorun yaşarsan /reload yap.","color":"yellow"}]
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.5
# Tüm oyuncuların CD'lerini sıfırla
execute as @a run function custom:cd/reset_all

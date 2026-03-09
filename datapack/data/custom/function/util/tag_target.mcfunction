# En yakın BAŞKA oyuncuyu ap.cur_target tag'i ile işaretle
# Başka oyuncu yoksa komutu çalıştıranı (@s) seç
tag @a remove ap.cur_target
tag @a[sort=nearest,limit=1,distance=0.1..] add ap.cur_target
execute unless entity @a[tag=ap.cur_target] run tag @s add ap.cur_target

# HATA DÜZELTİLDİ: Eski sürümde lore "En Yakın Oyuncuya Işınlan (CD: 10sn)"
# yazıyordu — bu TP değneğinin açıklamasıydı, Komut Değneğine aitti değil.
$give @s carrot_on_a_stick[minecraft:custom_data={ap_item:"command_wand",commands:$(commands)},minecraft:item_name='{"text":"Komut Değneği","color":"light_purple","bold":true,"italic":false}',minecraft:lore=['{"text":"Sağ tık → Kayıtlı komutları çalıştır","color":"gray","italic":false}','{"text":"(ap_multiCmd trigger gerekli)","color":"dark_gray","italic":false}'],minecraft:custom_model_data={floats:[1007.0f]}]
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"🪄 Komut Değneği verildi!","color":"light_purple"}]

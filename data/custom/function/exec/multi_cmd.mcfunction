# ═══════════════════════════════════════════════════════════
# exec/multi_cmd — Hedef Oyuncuda Çoklu Komut Çalıştır
# ═══════════════════════════════════════════════════════════
# ÇAĞIRIM (macro ile):
#   data modify storage custom:tmp NAME set value "OyuncuAdi"
#   data modify storage custom:tmp commands set value ["cmd1","cmd2"]
#   execute as <admin> run function custom:exec/multi_cmd with storage custom:tmp
#
# Makro değişkenleri:
#   $(NAME)     → hedef oyuncu adı
#   $(commands) → komut listesi (SNBT array: ["cmd1","cmd2"])
#
# Örnek eşya (ap_macro_self trigger için):
#   /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={
#     ap_action:"multi_cmd",
#     NAME:"Hedef",
#     commands:["effect give Hedef minecraft:speed 30 2","say Hiz verildi!"]
#   }]
# ═══════════════════════════════════════════════════════════

# Yetki kontrolü — çağıran oyuncu (@s) ap_perm >= 2 (mod+) olmalı
execute unless score @s ap_perm matches 2.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için mod+ (ap_perm >= 2) yetkisi gerekli.","color":"red"}]

# Hedef oyuncu üzerinde komut kuyruğunu çalıştır
$execute as $(NAME) at @s run function custom:macros/run_cmd {commands:$(commands)}

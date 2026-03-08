# ═══════════════════════════════════════════════════════════
# ÇOKLU KOMUT ÇALIŞTIRICI — vanilla macro, AME gerekmez
#
# Kullanım:
#   /function custom:macros/multi_cmd/run {commands:["cmd1","cmd2","cmd3"]}
#
# Cooldown: 10 saniye (200 tick) — ap_cd_mc scoreboard
# ═══════════════════════════════════════════════════════════

# 1. Önce kontrol et (HATA DÜZELTİLDİ: önce check sonra set)
execute if score @s ap_cd_mc matches 1.. run return run tellraw @s {"text":"[AdminPower] ⏱ Komut cooldown aktif, bekleyin.","color":"red"}

# 2. Cooldown başlat
scoreboard players set @s ap_cd_mc 200

# 3. Komut kuyruğunu yükle ve çalıştır
$data modify storage custom:cmd queue set value $(commands)
function custom:macros/multi_cmd/process

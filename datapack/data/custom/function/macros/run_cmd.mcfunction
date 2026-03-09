# ═══════════════════════════════════════════════════════════
# Geriye dönük uyumluluk — yeni yol: custom:macros/multi_cmd/run
# Kullanım: /function custom:macros/run_cmd {commands:["cmd1","cmd2"]}
# ═══════════════════════════════════════════════════════════
execute if score @s ap_cd_mc matches 1.. run return run tellraw @s {"text":"[AdminPower] ⏱ Cooldown aktif, bekleyin.","color":"red"}
$data modify storage custom:cmd queue set value $(commands)
function custom:macros/multi_cmd/process

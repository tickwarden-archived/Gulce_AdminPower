# ============================================
# custom:ame/log — AME Log Görüntüleyici
# ============================================
# AdminPower aksiyonlarının AME log'larını gösterir.
# /function custom:ame/log
# ============================================
execute unless entity @s[tag=ap.admin,tag=!ap.owner] unless entity @s[tag=ap.owner] run return run tellraw @s [{"text":"[AME] ","color":"aqua"},{"text":"❌ Bu komut için yetkiniz yok.","color":"red"}]

tellraw @s [{"text":"═══[ ","color":"dark_gray"},{"text":"AME Log","color":"aqua","bold":true},{"text":" ]═══","color":"dark_gray"},{"text":"  /function custom:ame/log/clear","color":"dark_gray","italic":true,click_event:{"action":"run_command","command":"/function custom:ame/log/clear"}}]
function macro:log/show

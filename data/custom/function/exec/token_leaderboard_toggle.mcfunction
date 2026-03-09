# ═══════════════════════════════════════════════════════════
# exec/token_leaderboard_toggle — Token Sıralamasını Sidebar'da Göster/Gizle
# #lb_on ap_flags: 0 = kapalı, 1 = açık
# ═══════════════════════════════════════════════════════════
scoreboard players set #lb_state ap_tmp 0
execute if score #lb_on ap_flags matches 1 run scoreboard players set #lb_state ap_tmp 1

# Aç
execute if score #lb_state ap_tmp matches 0 run scoreboard objectives setdisplay sidebar ap_tokens
execute if score #lb_state ap_tmp matches 0 run scoreboard players set #lb_on ap_flags 1
execute if score #lb_state ap_tmp matches 0 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.2
execute if score #lb_state ap_tmp matches 0 run tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"💰 Token Sıralaması ","color":"yellow"},{"text":"AÇIK","color":"green","bold":true},{"text":" (sidebar)","color":"dark_gray"}]

# Kapat
execute if score #lb_state ap_tmp matches 1 run scoreboard objectives setdisplay sidebar
execute if score #lb_state ap_tmp matches 1 run scoreboard players set #lb_on ap_flags 0
execute if score #lb_state ap_tmp matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #lb_state ap_tmp matches 1 run tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"💰 Token Sıralaması ","color":"yellow"},{"text":"KAPALI","color":"gray","bold":true}]

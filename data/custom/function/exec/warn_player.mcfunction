# ═══════════════════════════════════════════════════════════
# exec/warn_player — En yakın oyuncuyu uyar
# ap_warns sayacını 1 artırır. 3+ uyarıda ekstra uyarı mesajı.
# ═══════════════════════════════════════════════════════════
function custom:util/tag_target
scoreboard players add @a[tag=ap.cur_target,limit=1] ap_warns 1
execute store result score $wrn_count ap_tmp run scoreboard players get @a[tag=ap.cur_target,limit=1] ap_warns

# Hedefe bildir
execute as @a[tag=ap.cur_target,limit=1] run tellraw @s ["",{"text":"⚠ UYARI ","color":"red","bold":true},{"text":"(","color":"dark_red"},{"score":{"name":"@s","objective":"ap_warns"},"color":"yellow"},{"text":"/3): ","color":"dark_red"},{"text":"Kural ihlali tespit edildi!","color":"red"}]
execute as @a[tag=ap.cur_target,limit=1] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
execute as @a[tag=ap.cur_target,limit=1] run title @s title {"text":"⚠ UYARILDIM","color":"red","bold":true}
execute as @a[tag=ap.cur_target,limit=1] run title @s subtitle {"score":{"name":"@s","objective":"ap_warns"},"color":"yellow","extra":[{"text":"/3 Uyarı","color":"gray"}]}

# Admin'e bildir
tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"⚠ "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" uyarıldı — Toplam: ","color":"red"},{"score":{"name":"$wrn_count","objective":"ap_tmp"},"color":"yellow"},{"text":"/3","color":"gray"}]

# 3. uyarıda ek mesaj
execute if score $wrn_count ap_tmp matches 3.. run tellraw @s ["",{"text":"[AdminPower] ","color":"gold"},{"text":"⛔ ","color":"red"},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" 3 uyarı limitine ulaştı! Kick için: /function custom:macros/player/kick","color":"red"}]
execute if score $wrn_count ap_tmp matches 3.. run tellraw @a[tag=ap.cur_target,limit=1] ["",{"text":"⛔ ","color":"red","bold":true},{"text":"3 uyarı limitine ulaştın. Yetkili bir admin seni atabilir.","color":"red"}]

tag @a remove ap.cur_target

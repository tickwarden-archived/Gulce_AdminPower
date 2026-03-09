function custom:util/tag_target

# ── Yetki tag'leri ──
execute as @a[tag=ap.cur_target,limit=1] run scoreboard players set @s ap_perm 0
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove op
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.owner
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.admin
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.mod
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.vip

# ── State tag'leri + efektleri (yetki gidince bunlar da gitmeli) ──
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.flying
execute as @a[tag=ap.cur_target,limit=1] run effect clear @s minecraft:levitation
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove ap.nv_all
execute as @a[tag=ap.cur_target,limit=1] run effect clear @s minecraft:night_vision

# ── AME bridge: macro.admin'i her zaman temizle ──
execute as @a[tag=ap.cur_target,limit=1] run tag @s remove macro.admin
# Sonra sync: AME varsa diğer adminlerdeki tutarlılığı da koru
execute if score $ame ap_flags matches 1 run function custom:ame/perm/sync

# ── Bildirim ──
execute as @a[tag=ap.cur_target,limit=1] run title @s times 10 60 20
execute as @a[tag=ap.cur_target,limit=1] run title @s title {"text":"🚫 YETKİ ALINDI","color":"dark_red","bold":true}
execute as @a[tag=ap.cur_target,limit=1] run title @s subtitle {"text":"Tüm yetkileriniz kaldırıldı","color":"red"}
tellraw @a [{"text":"[AdminPower] ","color":"gold"},{"text":"🚫 ","color":"dark_red"},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"red"},{"text":" yetkisi kaldırıldı!","color":"dark_red"}]
tag @a remove ap.cur_target

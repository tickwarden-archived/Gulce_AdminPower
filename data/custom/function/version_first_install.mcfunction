tellraw @a [{"text":"","extra":[{"text":"╔══════════════════════════════╗\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"AdminPower v1.4.0","color":"yellow","bold":true},{"text":"           ║\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"İlk kurulum tespit edildi!","color":"green"},{"text":"    ║\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"Uyumlu: 1.21.5 – 1.21.11","color":"aqua"},{"text":"       ║\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"/function custom:menu","color":"white"},{"text":" ile başla ║\n","color":"gold"},{"text":"╚══════════════════════════════╝","color":"gold"}]}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

# Toggle başlangıç değerleri (sadece ilk kurulumda — reload'da bozulmaz)
scoreboard players set #time_frozen ap_flags 0
scoreboard players set #mob_spawn ap_flags 1

# v1.4.0 toggle başlangıç değerleri
scoreboard players set #pvp_on ap_flags 1
scoreboard players set #kinv_on ap_flags 0

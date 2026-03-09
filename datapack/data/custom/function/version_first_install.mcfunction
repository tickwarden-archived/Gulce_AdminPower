tellraw @a [{"text":"","extra":[{"text":"╔══════════════════════════════╗\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"AdminPower v1.2.0","color":"yellow","bold":true},{"text":"           ║\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"İlk kurulum tespit edildi!","color":"green"},{"text":"    ║\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"Uyumlu: 1.21.1 – 1.21.4","color":"aqua"},{"text":"       ║\n","color":"gold"},{"text":"║  ","color":"gold"},{"text":"/function custom:menu","color":"white"},{"text":" ile başla ║\n","color":"gold"},{"text":"╚══════════════════════════════╝","color":"gold"}]}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

# Toggle başlangıç değerleri (sadece ilk kurulumda — reload'da bozulmaz)
scoreboard players set $time_frozen ap_flags 0
scoreboard players set $mob_spawn ap_flags 1

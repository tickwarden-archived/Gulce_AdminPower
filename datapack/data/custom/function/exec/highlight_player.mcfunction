function custom:util/tag_target
effect give @a[tag=ap.cur_target,limit=1] minecraft:glowing 10 1 true
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 2
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"👁 "},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" 10 saniye boyunca parlıyor!","color":"aqua"}]
tag @a remove ap.cur_target

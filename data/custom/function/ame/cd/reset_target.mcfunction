# Yakındaki oyuncunun AME CD'lerini sıfırla
function custom:util/tag_target
execute as @a[tag=ap.cur_target,limit=1] run function custom:ame/cd/reset
tag @a remove ap.cur_target

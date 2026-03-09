# Kuyruktaki ilk komutu alır, siler, çalıştırır, kendini tekrar çağırır
execute if data storage custom:cmd {queue:[]} run return 0
data modify storage custom:cmd current set from storage custom:cmd queue[0]
data remove storage custom:cmd queue[0]
function custom:macros/multi_cmd/exec with storage custom:cmd
function custom:macros/multi_cmd/process

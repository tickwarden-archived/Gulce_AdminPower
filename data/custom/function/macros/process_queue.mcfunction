execute if data storage custom:cmd {queue:[]} run return 0
data modify storage custom:cmd current set from storage custom:cmd queue[0]
data remove storage custom:cmd queue[0]
function custom:macros/exec_current with storage custom:cmd
function custom:macros/process_queue

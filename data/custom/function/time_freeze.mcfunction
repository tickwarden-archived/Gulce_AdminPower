# Toggle: ap.time_frozen tag
execute if score $time_frozen ap_flags matches 1 run function custom:exec/time_unfreeze
execute if score $time_frozen ap_flags matches ..0 run function custom:exec/time_freeze_on

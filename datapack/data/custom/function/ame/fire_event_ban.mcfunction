# AME ban event'ini ateşle
data modify storage macro:input event set value "ap_ban_used"
function macro:event/fire with storage macro:input {}

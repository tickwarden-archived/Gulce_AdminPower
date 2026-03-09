# AME Event: kick komutu kullanıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] Kick komutu kullanıldı"
function macro:log/warn with storage macro:input {}
data modify storage macro:input title set value "👢 Kick!"
data modify storage macro:input color set value "gold"
function macro:string/header with storage macro:input {}

# AME Event: lightning kullanıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] Yıldırım çağrıldı"
function macro:log/info with storage macro:input {}
data modify storage macro:input title set value "⚡ Yıldırım!"
data modify storage macro:input color set value "yellow"
function macro:string/header with storage macro:input {}

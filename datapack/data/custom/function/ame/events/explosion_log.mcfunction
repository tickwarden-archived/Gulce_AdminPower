# AME Event: patlama kullanıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] Patlama komutu kullanıldı"
function macro:log/warn with storage macro:input {}
data modify storage macro:input title set value "💣 Patlama!"
data modify storage macro:input color set value "dark_red"
function macro:string/header with storage macro:input {}

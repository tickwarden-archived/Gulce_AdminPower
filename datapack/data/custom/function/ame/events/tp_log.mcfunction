# AME Event: tp komutu kullanıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] TP komutu kullanıldı"
function macro:log/info with storage macro:input {}
data modify storage macro:input title set value "🌀 Teleport!"
data modify storage macro:input color set value "light_purple"
function macro:string/header with storage macro:input {}

# AME Event: heal_all kullanıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] Heal-all komutu kullanıldı"
function macro:log/info with storage macro:input {}
data modify storage macro:input title set value "❤ Toplu İyileştirme!"
data modify storage macro:input color set value "red"
function macro:string/header with storage macro:input {}

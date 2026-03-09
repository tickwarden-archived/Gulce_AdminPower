# AME Event: god_all kullanıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] God modu tüm oyunculara uygulandı"
function macro:log/warn with storage macro:input {}
data modify storage macro:input title set value "⚔ God All!"
data modify storage macro:input color set value "dark_purple"
function macro:string/header with storage macro:input {}

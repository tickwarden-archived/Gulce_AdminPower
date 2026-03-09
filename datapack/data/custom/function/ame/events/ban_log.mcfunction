# AME Event: ban kullanıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] Ban işlemi gerçekleşti"
function macro:log/warn with storage macro:input {}
data modify storage macro:input title set value "🔨 Ban İşlemi"
data modify storage macro:input color set value "dark_red"
function macro:string/header with storage macro:input {}

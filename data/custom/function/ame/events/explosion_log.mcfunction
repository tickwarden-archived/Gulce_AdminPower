# AME Event: patlama kullanıldığında tetiklenir
data modify storage macro:input title set value "💣 Patlama!"
data modify storage macro:input color set value "dark_red"
function macro:string/header with storage macro:input {}

# AME Event: fireball kullanıldığında tetiklenir
data modify storage macro:input title set value "🔥 Fireball!"
data modify storage macro:input color set value "red"
function macro:string/header with storage macro:input {}

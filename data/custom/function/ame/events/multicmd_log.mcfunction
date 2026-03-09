# AME Event: multi_cmd çalıştırıldığında tetiklenir
data modify storage macro:input message set value "[AdminPower] Çoklu komut paketi çalıştırıldı"
function macro:log/info with storage macro:input {}

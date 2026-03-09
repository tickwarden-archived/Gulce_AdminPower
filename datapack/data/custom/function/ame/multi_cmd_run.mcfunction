# AME üzerinden multi_cmd çalıştır
# macro:input.commands listesi üst çağrıdan geliyor (with ... argümanı)
# Listeyi AME input format'ına çevir
data modify storage macro:input list set from storage macro:input commands
function macro:cmd/other/multi_cmd/from_input

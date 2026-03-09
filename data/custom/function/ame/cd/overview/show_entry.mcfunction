# AME CD Overview: tek entry göster
# INPUT: macro:input { player:"...", key:"ap_cd_XX" }
function macro:cooldown/remaining with storage macro:input {}
execute store result score @s ap_tmp run data get storage macro:output result 1

# 0 ise: hazır (gösterme — sadece aktif olanları göster)
execute if score @s ap_tmp matches 1.. run function custom:ame/cd/overview/show_active

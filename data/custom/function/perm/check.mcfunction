# En yakın oyuncunun yetkisini göster
tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"📋 En yakın oyuncunun yetki seviyesi: ","color":"gray"},{"score":{"name":"@e[type=player,sort=nearest,distance=0.1..,limit=1]","objective":"ap_perm"},"color":"yellow"},{"text":" (0=Yok 1=VIP 2=Mod 3=Admin 4=Sahip)","color":"dark_gray"}]

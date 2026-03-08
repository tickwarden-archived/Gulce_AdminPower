# ── Hedef oyuncunun cooldown'larını sıfırla ──────────────────────
# HATA DÜZELTİLDİ: Eski sürümde @s (komutu çalıştıran) olarak
# çalışıyordu ve "Hedef oyuncunun CD'leri sıfırlandı" mesajını
# admin kendisine gönderiyordu — hedef oyuncuya hiçbir şey olmuyordu.
#
# Düzeltme: execute as ile en yakın oyuncuya (@s ≠ kendisi) yönlendiriliyor.
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_fb 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_ex 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_dm 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_fz 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_el 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_st 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_sp 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_iv 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_rl 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_hl 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_fd 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_gt 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_xp 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_mc 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_tp 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_sn 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_ta 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_te 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_lt 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_bc 0
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run scoreboard players set @s ap_cd_rp 0
# Hedef oyuncuya bildirim
execute as @e[type=player,sort=nearest,distance=0.1..,limit=1] run tellraw @s {"text":"[AdminPower] ✅ Cooldown'larınız admin tarafından sıfırlandı!","color":"green"}
# Admin'e onay mesajı
tellraw @s [{"text":"[AdminPower] ✅ ","color":"green"},{"selector":"@e[type=player,sort=nearest,distance=0.1..,limit=1]","color":"yellow"},{"text":" oyuncusunun cooldown'ları sıfırlandı!","color":"green"}]

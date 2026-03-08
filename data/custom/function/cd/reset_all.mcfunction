# HF-013: Tüm cooldown'ları sıfırla (@s için)
scoreboard players set @s ap_cd_fb 0
scoreboard players set @s ap_cd_ex 0
scoreboard players set @s ap_cd_dm 0
scoreboard players set @s ap_cd_fz 0
scoreboard players set @s ap_cd_el 0
scoreboard players set @s ap_cd_st 0
scoreboard players set @s ap_cd_sp 0
scoreboard players set @s ap_cd_iv 0
scoreboard players set @s ap_cd_rl 0
scoreboard players set @s ap_cd_hl 0
scoreboard players set @s ap_cd_fd 0
scoreboard players set @s ap_cd_gt 0
scoreboard players set @s ap_cd_xp 0
scoreboard players set @s ap_cd_mc 0
scoreboard players set @s ap_cd_tp 0
scoreboard players set @s ap_cd_sn 0
scoreboard players set @s ap_cd_ta 0
scoreboard players set @s ap_cd_te 0
scoreboard players set @s ap_cd_lt 0
scoreboard players set @s ap_cd_bc 0
scoreboard players set @s ap_cd_rp 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
tellraw @s {"text":"[AdminPower] ✅ Tüm cooldown'lar sıfırlandı!","color":"green"}

function custom:util/tag_target
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_fb 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_ex 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_dm 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_fz 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_el 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_st 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_sp 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_iv 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_rl 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_hl 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_fd 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_gt 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_xp 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_mc 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_tp 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_sn 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_ta 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_te 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_lt 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_bc 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_rp 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_ha 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_fa 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_na 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_ts 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_bl 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_ca 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_sa 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_fk 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_sv 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_wt 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_garm 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_gto 0
scoreboard players set @a[tag=ap.cur_target,limit=1] ap_cd_gda 0
execute as @a[tag=ap.cur_target,limit=1] run tellraw @s {"text":"[AdminPower] ✅ Cooldown'larınız admin tarafından sıfırlandı!","color":"green"}
tellraw @s [{"text":"[AdminPower] ✅ ","color":"green"},{"selector":"@a[tag=ap.cur_target,limit=1]","color":"yellow"},{"text":" oyuncusunun cooldown'ları sıfırlandı!","color":"green"}]
tag @a remove ap.cur_target

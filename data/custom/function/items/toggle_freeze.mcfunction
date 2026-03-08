# Dondur/çöz toggle — donmuş varsa çöz, yoksa dondur
execute if entity @a[tag=ap.freezed,gamemode=!spectator] run function custom:unfreeze_all
execute unless entity @a[tag=ap.freezed,gamemode=!spectator] run function custom:freeze_all

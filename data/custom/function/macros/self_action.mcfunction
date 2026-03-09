# ═══════════════════════════════════════════════════════════
# macros/self_action — SelectedItem.components Makro Dispatcher
# ═══════════════════════════════════════════════════════════
# /trigger ap_macro_self set 1 → eldeki eşyanın custom_data'sındaki
# ap_action değerini okuyarak ilgili exec fonksiyonunu çağırır.
#
# Eşya örnekleri:
#   Basit:
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={ap_action:"give_armor"}]
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={ap_action:"freeze_self"}]
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={ap_action:"give_xp"}]
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={ap_action:"invisibility_self"}]
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={ap_action:"fire_resist_self"}]
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={ap_action:"diamond"}]
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={ap_action:"give_netherite"}]
#
#   multi_cmd (NAME + commands alanları zorunlu):
#     /give @s minecraft:carrot_on_a_stick[minecraft:custom_data={
#       ap_action:"multi_cmd",
#       NAME:"Steve",
#       commands:["effect give Steve minecraft:speed 30 2","say Hiz!"]
#     }]
# ═══════════════════════════════════════════════════════════

# Yetki kontrolü (ap_perm >= 2, mod+)
execute unless score @s ap_perm matches 2.. run return run tellraw @s [{"text":"[AdminPower] ","color":"gold"},{"text":"❌ Bu eylem için mod+ (ap_perm >= 2) yetkisi gerekli.","color":"red"}]

# multi_cmd: NAME + commands parametreleri gerektirdiği için 'with' ile özel dispatch
# (Minecraft'ta 'function X with Y' sadece macro fonksiyonlarda çalışır)
execute if data entity @s SelectedItem.components."minecraft:custom_data"{ap_action:"multi_cmd"} run return run function custom:exec/multi_cmd with entity @s SelectedItem.components."minecraft:custom_data"

# Diğer tüm exec'ler için generic dispatch (parametre gerektirmez)
$function custom:exec/$(ap_action)

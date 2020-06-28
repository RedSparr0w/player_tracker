execute as @a[x_rotation=70..,nbt={OnGround:1b,SelectedItem:{id:"minecraft:compass",tag:{compass_type:"tracking_device"}}}] run tag @s add has_gui_item
execute as @e[type=minecraft:chest_minecart,tag=gui_container] at @s run execute unless entity @a[distance=..3,tag=has_gui_item] run function player_tracker:gui/removecart
execute as @e[tag=had_gui_item,tag=!has_gui_item] run tag @s remove had_gui_item
execute as @a[tag=has_gui_item,tag=!had_gui_item] at @s anchored eyes run function player_tracker:gui/summoncart
execute as @a[tag=has_gui_item] at @s anchored eyes run function player_tracker:gui/movecart
execute as @e[type=minecraft:chest_minecart,tag=gui_container] at @s run function player_tracker:gui/main

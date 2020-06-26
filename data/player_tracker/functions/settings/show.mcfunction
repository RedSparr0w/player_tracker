#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.settings 0

tellraw @s [" "]
tellraw @s [" "]
tellraw @s [" "]
tellraw @s ["",{"text":"===== Player Tracker Settings =====","bold":true,"color":"gold"}]
execute if score #show_menu_on_join pt.settings matches 0 run tellraw @s [{"text":"Show menu on join ","color":"#CDCDCD"},{"text":"[disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_menu_on_join"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)","color":"#CDCDCD"}}}]
execute if score #show_menu_on_join pt.settings matches 1 run tellraw @s [{"text":"Show menu on join ","color":"#CDCDCD"},{"text":"[enabled]","color":"green","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_menu_on_join"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)","color":"#CDCDCD"}}}]
tellraw @s [" "]
tellraw @s [" "]

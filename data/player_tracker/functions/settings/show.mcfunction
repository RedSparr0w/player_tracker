#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.settings 0

tellraw @s [" "]
tellraw @s [" "]
tellraw @s [" "]
tellraw @s ["",{"text":"===== Player Tracker Settings =====","bold":true,"color":"gold"}]

execute if score #show_menu_on_join pt.settings matches 0 run tellraw @s [{"text":"Show menu on join ","color":"#CDCDCD"},{"text":"[disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_menu_on_join"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen enabled, the player tracker menu will be shown on login","color":"#CDCDCD"}}}]
execute if score #show_menu_on_join pt.settings matches 1 run tellraw @s [{"text":"Show menu on join ","color":"#CDCDCD"},{"text":"[enabled]","color":"green","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_menu_on_join"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen enabled, the player tracker menu will be shown on login","color":"#CDCDCD"}}}]

execute if score #allow_tracking_in_the_nether pt.settings matches 0 run tellraw @s [{"text":"Allow compass to work in the Nether ","color":"#CDCDCD"},{"text":"[disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/allow_tracking_in_the_nether"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen disabled, the compass will spin randomly when in the Nether dimension","color":"#CDCDCD"}}}]
execute if score #allow_tracking_in_the_nether pt.settings matches 1 run tellraw @s [{"text":"Allow compass to work in the Nether ","color":"#CDCDCD"},{"text":"[enabled]","color":"green","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/allow_tracking_in_the_nether"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen disabled, the compass will spin randomly when in the Nether dimension","color":"#CDCDCD"}}}]

execute if score #allow_tracking_in_the_end pt.settings matches 0 run tellraw @s [{"text":"Allow compass to work in the End ","color":"#CDCDCD"},{"text":"[disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/allow_tracking_in_the_end"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen disabled, the compass will spin randomly when in the End dimension","color":"#CDCDCD"}}}]
execute if score #allow_tracking_in_the_end pt.settings matches 1 run tellraw @s [{"text":"Allow compass to work in the End ","color":"#CDCDCD"},{"text":"[enabled]","color":"green","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/allow_tracking_in_the_end"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen disabled, the compass will spin randomly when in the End dimension","color":"#CDCDCD"}}}]

execute if score #hide_pos_different_dimensions pt.settings matches 0 run tellraw @s [{"text":"Hide location if different dimensions ","color":"#CDCDCD"},{"text":"[disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/hide_pos_different_dimensions"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen disabled, the compass will show the players last known position in your current dimension","color":"#CDCDCD"}}}]
execute if score #hide_pos_different_dimensions pt.settings matches 1 run tellraw @s [{"text":"Hide location if different dimensions ","color":"#CDCDCD"},{"text":"[enabled]","color":"green","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/hide_pos_different_dimensions"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen disabled, the compass will show the players last known position in your current dimension","color":"#CDCDCD"}}}]

execute if score #rename_compass_tracked_player pt.settings matches 0 run tellraw @s [{"text":"Name compass players name ","color":"#CDCDCD"},{"text":"[disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/rename_compass_tracked_player"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen enabled, the compass will have the same name as the player being tracked","color":"#CDCDCD"}}}]
execute if score #rename_compass_tracked_player pt.settings matches 1 run tellraw @s [{"text":"Name compass players name ","color":"#CDCDCD"},{"text":"[enabled]","color":"green","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/rename_compass_tracked_player"},"hoverEvent":{"action":"show_text","value":{"text":"Click to toggle (op only)\nWhen enabled, the compass will have the same name as the player being tracked","color":"#CDCDCD"}}}]

tellraw @s [" "]
tellraw @s [" "]

#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.menu 0

tellraw @s [" "]
tellraw @s ["",{"text":"===== Player Tracker =====","bold":true,"color":"gold"}]
tellraw @s [{"text":"[Get a compass]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger pt.get_compass"},"hoverEvent":{"action":"show_text","value":{"text":"Get a new compass","color":"aqua"}}}]
tellraw @s [{"text":"[Select a player to track]","color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger pt.player_list"},"hoverEvent":{"action":"show_text","value":{"text":"Choose a player to track","color":"aqua" }}}]
tellraw @s [{"text":"[information]","color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger pt.info"},"hoverEvent":{"action":"show_text","value":{"text":"Choose a player to track","color":"aqua" }}}]
tellraw @s [" "]

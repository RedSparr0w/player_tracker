#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.info 0

tellraw @s [" "]
tellraw @s {"text":"===== Player Tracker Information =====","bold":true,"color":"gold"}
tellraw @s ["Welcome to Player Tracker,"]
tellraw @s ["",{"text":"When the compass is in your hotbar/offhand, the position of the tracked player will be updated automatically."}]
tellraw @s ["",{"text":"You can view the menu by typing "},{"text":"/trigger pt.menu","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger pt.menu"},"hoverEvent":{"action":"show_text","contents":"Click to write command"}},{"text":"\nYou can select a which player you would like to track by typing "},{"text":"/trigger pt.player_list","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger pt.player_list"},"hoverEvent":{"action":"show_text","contents":"Click to enter command"}}]
tellraw @s [" "]
tellraw @s {"text":"===== Credits =====","bold":true,"color":"gold"}
tellraw @s {"text":"RedSparr0w#0167","color":"red","clickEvent":{"action":"copy_to_clipboard","value":"RedSparr0w#0167"},"hoverEvent":{"action":"show_text","contents":"[Discord ID] Click to copy"}}
tellraw @s [" "]

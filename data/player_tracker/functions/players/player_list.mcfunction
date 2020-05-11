#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.player_list 0

tellraw @s [{"text":"===== Select Player to track =====","color":"gold"}]
tellraw @s [{"text":"[Nearest Player]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger pt.tracking_id set 0"},"hoverEvent":{"action":"show_text","value":{"text":"Track the nearest player!"}}}]
execute if entity @a[scores={pt.player_id=0..9}] run function player_tracker:players/player_list/00
execute if entity @a[scores={pt.player_id=10..19}] run function player_tracker:players/player_list/10
execute if entity @a[scores={pt.player_id=20..29}] run function player_tracker:players/player_list/20
execute if entity @a[scores={pt.player_id=30..39}] run function player_tracker:players/player_list/30
execute if entity @a[scores={pt.player_id=40..49}] run function player_tracker:players/player_list/40
execute if entity @a[scores={pt.player_id=50..59}] run function player_tracker:players/player_list/50
execute if entity @a[scores={pt.player_id=60..69}] run function player_tracker:players/player_list/60
execute if entity @a[scores={pt.player_id=70..79}] run function player_tracker:players/player_list/70
execute if entity @a[scores={pt.player_id=80..89}] run function player_tracker:players/player_list/80
execute if entity @a[scores={pt.player_id=90..99}] run function player_tracker:players/player_list/90

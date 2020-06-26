execute as @a[scores={pt.menu=1..}] run function player_tracker:menu
execute as @a[scores={pt.settings=1..}] run function player_tracker:settings/show
execute as @a[scores={pt.info=1..}] run function player_tracker:information
execute as @a[scores={pt.get_compass=1..}] run function player_tracker:players/give_compass
execute as @a[scores={pt.joined_game=1..}] run function player_tracker:players/joined_game
execute as @a[tag=!player_id] run function player_tracker:players/apply_id
execute as @a[scores={pt.player_list=1..}] run function player_tracker:players/player_list

scoreboard players enable @a pt.menu
scoreboard players enable @a pt.settings
scoreboard players enable @a pt.info
scoreboard players enable @a pt.get_compass
scoreboard players enable @a pt.tracking_id
scoreboard players enable @a pt.player_list

#> Run sub function ticks
function player_tracker:gui/tick

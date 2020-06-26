#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.joined_game 0

#> Set player ID if not up to date
execute if score @s pt.reset < count pt.reset run function player_tracker:players/apply_id

#> Show menu
execute if score #show_menu_on_join pt.settings matches 1 run function player_tracker:menu

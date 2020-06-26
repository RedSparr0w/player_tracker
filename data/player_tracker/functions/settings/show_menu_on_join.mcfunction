#> Toggle our setting
scoreboard players add #show_menu_on_join pt.settings 1

#> Reset to first option
execute if score #show_menu_on_join pt.settings matches 2.. run scoreboard players set #show_menu_on_join pt.settings 0

function player_tracker:settings/show

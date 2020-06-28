#> Toggle our setting
scoreboard players add #rename_compass_tracked_player pt.settings 1

#> Reset to first option
execute if score #rename_compass_tracked_player pt.settings matches 2.. run scoreboard players set #rename_compass_tracked_player pt.settings 0

function player_tracker:settings/show

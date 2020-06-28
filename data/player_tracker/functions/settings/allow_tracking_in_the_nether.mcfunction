#> Toggle our setting
scoreboard players add #allow_tracking_in_the_nether pt.settings 1

#> Reset to first option
execute if score #allow_tracking_in_the_nether pt.settings matches 2.. run scoreboard players set #allow_tracking_in_the_nether pt.settings 0

function player_tracker:settings/show

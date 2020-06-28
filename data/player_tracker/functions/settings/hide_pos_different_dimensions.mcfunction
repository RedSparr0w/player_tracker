#> Toggle our setting
scoreboard players add #hide_pos_different_dimensions pt.settings 1

#> Reset to first option
execute if score #hide_pos_different_dimensions pt.settings matches 2.. run scoreboard players set #hide_pos_different_dimensions pt.settings 0

function player_tracker:settings/show

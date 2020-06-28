#> Load our default settings
execute unless score #show_menu_on_join pt.settings matches 0.. run scoreboard players set #show_menu_on_join pt.settings 1
execute unless score #allow_tracking_in_the_nether pt.settings matches 0.. run scoreboard players set #allow_tracking_in_the_nether pt.settings 1
execute unless score #allow_tracking_in_the_end pt.settings matches 0.. run scoreboard players set #allow_tracking_in_the_end pt.settings 1
execute unless score #hide_pos_different_dimensions pt.settings matches 0.. run scoreboard players set #hide_pos_different_dimensions pt.settings 0
execute unless score #rename_compass_tracked_player pt.settings matches 0.. run scoreboard players set #rename_compass_tracked_player pt.settings 1

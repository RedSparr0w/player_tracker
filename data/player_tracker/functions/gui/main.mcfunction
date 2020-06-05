execute unless score @p[distance=..3] pt.gui_page matches 1.. run scoreboard players set @p[distance=..3] pt.gui_page 1
execute if score @p[distance=..3] pt.gui_page matches 1 run function player_tracker:gui/gui1
execute if score @p[distance=..3] pt.gui_page matches 2 run function player_tracker:gui/gui2
execute if score @p[distance=..3] pt.gui_page matches 3 run function player_tracker:gui/gui3
execute if score @p[distance=..3] pt.gui_page matches 4 run function player_tracker:gui/gui4

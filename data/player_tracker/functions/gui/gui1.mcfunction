execute store result score @p[distance=..3] gui_count if data entity @s Items[].tag.gui_item
execute if score @p[distance=..3] gui_count matches 0 run function player_tracker:gui/reset_gui1
execute unless score @p[distance=..3] gui_count matches 27 run function player_tracker:gui/actions1

#> Apply player ID
scoreboard players operation @s pt.reset = count pt.reset
scoreboard players add #total_ids pt.player_id 1
scoreboard players operation @s pt.player_id = #total_ids pt.player_id
tag @s add player_id

# Add player head to storage
#tag @s add player_head
#execute in minecraft:overworld run data modify storage pt:player_head_backup Items[] set from storage pt:player_head
#execute in minecraft:overworld run data merge block 0 2 1 {Text1:'{"selector":"@a[tag=player_head,limit=1]"}'}
#execute in minecraft:overworld run data modify storage pt:compass Items[].tag.display.Name set from block 0 2 1 Text1
#tag @s remove player_head

#> Add player head to storage
scoreboard players add #current_slot pt.gui 1
loot replace block 0 1 1 container.0 loot player_tracker:player_head
data modify block 0 1 1 Items[0].tag.gui_item set value true
execute store result block 0 1 1 Items[0].Slot byte 1 run scoreboard players get #current_slot pt.gui
data modify storage pt:player_heads Items append from block 0 1 1 Items[0]
execute in minecraft:overworld run data remove block 0 1 1 Items

#> Bump the page
execute if score #current_slot pt.gui matches 25 run scoreboard players add #pages pt.gui 1
#> Reset the current slot to -1 so it will fill in the first slot from now on
execute if score #current_slot pt.gui matches 25 run scoreboard players set #current_slot pt.gui -1
#> Bump the slot if it will overwrite the previous page item and we aren't on the first page page
execute unless score #pages pt.gui matches 1 if score #current_slot pt.gui matches 17 run scoreboard players add #current_slot pt.gui 1

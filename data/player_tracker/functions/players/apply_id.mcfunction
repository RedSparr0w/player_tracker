# Add player head to storage (need this first so player with id 1 is in slot 0)
loot replace block -23 72 25 container.0 loot player_tracker:player_head
data modify block -23 72 25 Items[0].tag.gui_item set value true
execute store result block -23 72 25 Items[0].Slot byte 1 run scoreboard players get #total_ids pt.player_id
data modify storage pt:player_heads Items append from block -23 72 25 Items[0]

# Apply player ID
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

data modify entity @e[tag=menu,limit=1] Items set from storage pt:player_heads Items
execute in minecraft:overworld run data remove block -23 72 25 Items

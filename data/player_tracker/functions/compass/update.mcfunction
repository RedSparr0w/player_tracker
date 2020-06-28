#> Create pt:compass storage and update nbt
data modify storage pt:compass Items[] set from entity @s Inventory[{tag:{compass_type:"tracking_device"}}]
data modify storage pt:compass Items[].Slot set value 0b

#> Set compass dimension to tracked/current players dimension
execute if score #hide_pos_different_dimensions pt.settings matches 0 run data modify storage pt:compass Items[].tag.LodestoneDimension set from entity @s Dimension
execute if score #hide_pos_different_dimensions pt.settings matches 1 run data modify storage pt:compass Items[].tag.LodestoneDimension set from entity @a[tag=tracking,limit=1] Dimension

#> updates x and z positions of the compass
##> Overworld
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] store result storage pt:compass Items[].tag.LodestonePos.X int 1 run scoreboard players get @a[tag=tracking,limit=1] pt.overworld_x
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] store result storage pt:compass Items[].tag.LodestonePos.Z int 1 run scoreboard players get @a[tag=tracking,limit=1] pt.overworld_z
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] unless score @a[tag=tracking,limit=1] pt.overworld_x = @a[tag=tracking,limit=1] pt.overworld_x run data modify storage pt:compass Items[].tag.LodestoneDimension set from entity @a[tag=tracking,limit=1] Dimension
##> The Nether
execute if score #allow_tracking_in_the_nether pt.settings matches 1 if entity @s[nbt={Dimension:"minecraft:the_nether"}] store result storage pt:compass Items[].tag.LodestonePos.X int 1 run scoreboard players get @a[tag=tracking,limit=1] pt.the_nether_x
execute if score #allow_tracking_in_the_nether pt.settings matches 1 if entity @s[nbt={Dimension:"minecraft:the_nether"}] store result storage pt:compass Items[].tag.LodestonePos.Z int 1 run scoreboard players get @a[tag=tracking,limit=1] pt.the_nether_z
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] unless score @a[tag=tracking,limit=1] pt.the_nether_x = @a[tag=tracking,limit=1] pt.the_nether_x run data modify storage pt:compass Items[].tag.LodestoneDimension set from entity @a[tag=tracking,limit=1] Dimension
##> The End
execute if score #allow_tracking_in_the_end pt.settings matches 1 if entity @s[nbt={Dimension:"minecraft:the_end"}] store result storage pt:compass Items[].tag.LodestonePos.X int 1 run scoreboard players get @a[tag=tracking,limit=1] pt.the_end_x
execute if score #allow_tracking_in_the_end pt.settings matches 1 if entity @s[nbt={Dimension:"minecraft:the_end"}] store result storage pt:compass Items[].tag.LodestonePos.Z int 1 run scoreboard players get @a[tag=tracking,limit=1] pt.the_end_z
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] unless score @a[tag=tracking,limit=1] pt.the_end_x = @a[tag=tracking,limit=1] pt.the_end_x run data modify storage pt:compass Items[].tag.LodestoneDimension set from entity @a[tag=tracking,limit=1] Dimension

#> Disable compass if not allowed in dimension
execute if score #allow_tracking_in_the_nether pt.settings matches 0 if entity @s[nbt={Dimension:"minecraft:the_nether"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:overworld"
execute if score #allow_tracking_in_the_end pt.settings matches 0 if entity @s[nbt={Dimension:"minecraft:the_end"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:overworld"

#> Update compass name using a sign
execute if score #rename_compass_tracked_player pt.settings matches 1 in minecraft:overworld run data merge block 0 2 1 {Text1:'{"selector":"@a[tag=tracking]"}'}
execute if score #rename_compass_tracked_player pt.settings matches 1 in minecraft:overworld run data modify storage pt:compass Items[].tag.display.Name set from block 0 2 1 Text1
execute if score #rename_compass_tracked_player pt.settings matches 0 run data modify storage pt:compass Items[].tag.display.Name set value '[{"text":"Tracking Compass","italic":"false"}]'

#> remove tag from player being tracked
tag @a[tag=tracking] remove tracking

#> updates shulker box from pt:compass storage Items[]
execute in minecraft:overworld run data modify block 0 1 1 Items[] set from storage pt:compass Items[]

#> Replace "tracking_device" in offhand/hotbar, updating Player position
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:-106b,tag:{compass_type:"tracking_device"}}]}] weapon.offhand 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:0b,tag:{compass_type:"tracking_device"}}]}] hotbar.0 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:1b,tag:{compass_type:"tracking_device"}}]}] hotbar.1 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:2b,tag:{compass_type:"tracking_device"}}]}] hotbar.2 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:3b,tag:{compass_type:"tracking_device"}}]}] hotbar.3 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:4b,tag:{compass_type:"tracking_device"}}]}] hotbar.4 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:5b,tag:{compass_type:"tracking_device"}}]}] hotbar.5 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:6b,tag:{compass_type:"tracking_device"}}]}] hotbar.6 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:7b,tag:{compass_type:"tracking_device"}}]}] hotbar.7 1 mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:8b,tag:{compass_type:"tracking_device"}}]}] hotbar.8 1 mine 0 1 1 air{drop_contents:1b}

#> Remove pt:compass and block items
data remove storage pt:compass Items
execute in minecraft:overworld run data remove block 0 1 1 Items

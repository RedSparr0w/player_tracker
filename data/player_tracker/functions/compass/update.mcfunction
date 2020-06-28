#> Create pt:compass storage and update nbt
data modify storage pt:compass Items[] set from entity @s Inventory[{tag:{compass_type:"tracking_device"}}]
data modify storage pt:compass Items[].Slot set value 0b

#> Set dimension to tracked players current dimension
data modify storage pt:compass Items[].tag.LodestoneDimension set from entity @a[tag=tracking,limit=1] Dimension

#> updates x and z positions of the compass
execute store result storage pt:compass Items[].tag.LodestonePos.X int 1 run data get entity @a[tag=tracking,limit=1] Pos[0]
execute store result storage pt:compass Items[].tag.LodestonePos.Z int 1 run data get entity @a[tag=tracking,limit=1] Pos[2]

#> Update compass name using a sign
execute in minecraft:overworld run data merge block 0 2 1 {Text1:'{"selector":"@a[tag=tracking]"}'}
execute in minecraft:overworld run data modify storage pt:compass Items[].tag.display.Name set from block 0 2 1 Text1

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

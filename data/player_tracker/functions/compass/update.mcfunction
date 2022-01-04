#> Create pt:compass storage and update nbt
execute in minecraft:overworld run data modify storage pt:compass Items[] set from entity @s Inventory[{tag:{compass_type:"tracking_device"}}]
execute in minecraft:overworld run data modify storage pt:compass Items[].Slot set value 0b

#> Set dimension to our current dimension
execute in minecraft:overworld if entity @s[nbt={Dimension:"minecraft:overworld"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:overworld"
execute in minecraft:overworld if entity @s[nbt={Dimension:"minecraft:the_nether"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:the_nether"
execute in minecraft:overworld if entity @s[nbt={Dimension:"minecraft:the_end"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:the_end"
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] unless entity @a[tag=tracking,nbt={Dimension:"minecraft:overworld"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:the_end"
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] unless entity @a[tag=tracking,nbt={Dimension:"minecraft:the_nether"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:the_end"
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] unless entity @a[tag=tracking,nbt={Dimension:"minecraft:the_end"}] run data modify storage pt:compass Items[].tag.LodestoneDimension set value "minecraft:the_nether"

#> updates x, y and z positions of the compass
execute in minecraft:overworld run execute store result storage pt:compass Items[].tag.LodestonePos.X int 1 run data get entity @a[tag=tracking,limit=1] Pos[0]
execute in minecraft:overworld run execute store result storage pt:compass Items[].tag.LodestonePos.Y int 1 run data get entity @a[tag=tracking,limit=1] Pos[1]
execute in minecraft:overworld run execute store result storage pt:compass Items[].tag.LodestonePos.Z int 1 run data get entity @a[tag=tracking,limit=1] Pos[2]
execute in minecraft:overworld run data merge block 0 -62 1 {Text1:'{"selector":"@a[tag=tracking]"}'}
execute in minecraft:overworld run data modify storage pt:compass Items[].tag.display.Name set from block 0 -62 1 Text1

execute store result score #x_pos pt.settings run data get entity @a[tag=tracking,limit=1] Pos[0]
execute store result score #y_pos pt.settings run data get entity @a[tag=tracking,limit=1] Pos[1]
execute store result score #z_pos pt.settings run data get entity @a[tag=tracking,limit=1] Pos[2]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:compass",tag:{compass_type:"tracking_device"}}}] run execute if entity @a[tag=tracking,nbt={Dimension:"minecraft:overworld"}] run title @s actionbar [{"text":"[","color":"gray"},{"selector":"@a[tag=tracking,limit=1]"},{"text":"] ","color":"gray"},{"text":"x: "},{"score":{"name":"#x_pos","objective":"pt.settings"},"color":"gold"},{"text":" y: "},{"score":{"name":"#y_pos","objective":"pt.settings"},"color":"light_purple"},{"text":" z: "},{"score":{"name":"#z_pos","objective":"pt.settings"},"color":"aqua"},{"text":" [Overworld] ", "color": "green"}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:compass",tag:{compass_type:"tracking_device"}}}] run execute if entity @a[tag=tracking,nbt={Dimension:"minecraft:the_nether"}] run title @s actionbar [{"text":"[","color":"gray"},{"selector":"@a[tag=tracking,limit=1]"},{"text":"] ","color":"gray"},{"text":"x: "},{"score":{"name":"#x_pos","objective":"pt.settings"},"color":"gold"},{"text":" y: "},{"score":{"name":"#y_pos","objective":"pt.settings"},"color":"light_purple"},{"text":" z: "},{"score":{"name":"#z_pos","objective":"pt.settings"},"color":"aqua"},{"text":" [Nether] ", "color": "red"}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:compass",tag:{compass_type:"tracking_device"}}}] run execute if entity @a[tag=tracking,nbt={Dimension:"minecraft:the_end"}] run title @s actionbar [{"text":"[","color":"gray"},{"selector":"@a[tag=tracking,limit=1]"},{"text":"] ","color":"gray"},{"text":"x: "},{"score":{"name":"#x_pos","objective":"pt.settings"},"color":"gold"},{"text":" y: "},{"score":{"name":"#y_pos","objective":"pt.settings"},"color":"light_purple"},{"text":" z: "},{"score":{"name":"#z_pos","objective":"pt.settings"},"color":"aqua"},{"text":" [The End] ", "color": "dark_gray"}]

tag @a[tag=tracking] remove tracking

#> updates shulker box from pt:compass storage Items[]
execute in minecraft:overworld run data modify block 0 -63 1 Items[] set from storage pt:compass Items[]

#> Replace "tracking_device" in offhand/hotbar, updating Player position
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:-106b,tag:{compass_type:"tracking_device"}}]}] weapon.offhand from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:0b,tag:{compass_type:"tracking_device"}}]}] hotbar.0 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:1b,tag:{compass_type:"tracking_device"}}]}] hotbar.1 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:2b,tag:{compass_type:"tracking_device"}}]}] hotbar.2 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:3b,tag:{compass_type:"tracking_device"}}]}] hotbar.3 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:4b,tag:{compass_type:"tracking_device"}}]}] hotbar.4 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:5b,tag:{compass_type:"tracking_device"}}]}] hotbar.5 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:6b,tag:{compass_type:"tracking_device"}}]}] hotbar.6 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:7b,tag:{compass_type:"tracking_device"}}]}] hotbar.7 from block 0 -63 1 container.0
execute in minecraft:overworld run item replace entity @s[nbt={Inventory:[{Slot:8b,tag:{compass_type:"tracking_device"}}]}] hotbar.8 from block 0 -63 1 container.0

#> Remove pt:compass and block items
execute in minecraft:overworld run data remove storage pt:compass Items
execute in minecraft:overworld run data remove block 0 -63 1 Items

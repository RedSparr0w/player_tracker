#> Remove any gui items
kill @e[type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}}]

#> Run our commands
execute unless data entity @s Items[{Slot:0b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[50] run scoreboard players set @p[distance=..3] pt.tracking_id 51
execute unless data entity @s Items[{Slot:1b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[51] run scoreboard players set @p[distance=..3] pt.tracking_id 52
execute unless data entity @s Items[{Slot:2b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[52] run scoreboard players set @p[distance=..3] pt.tracking_id 53
execute unless data entity @s Items[{Slot:3b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[53] run scoreboard players set @p[distance=..3] pt.tracking_id 54
execute unless data entity @s Items[{Slot:4b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[54] run scoreboard players set @p[distance=..3] pt.tracking_id 55
execute unless data entity @s Items[{Slot:5b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[55] run scoreboard players set @p[distance=..3] pt.tracking_id 56
execute unless data entity @s Items[{Slot:6b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[56] run scoreboard players set @p[distance=..3] pt.tracking_id 57
execute unless data entity @s Items[{Slot:7b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[57] run scoreboard players set @p[distance=..3] pt.tracking_id 58
execute unless data entity @s Items[{Slot:8b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[58] run scoreboard players set @p[distance=..3] pt.tracking_id 59
execute unless data entity @s Items[{Slot:9b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[59] run scoreboard players set @p[distance=..3] pt.tracking_id 60
execute unless data entity @s Items[{Slot:10b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[60] run scoreboard players set @p[distance=..3] pt.tracking_id 61
execute unless data entity @s Items[{Slot:11b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[61] run scoreboard players set @p[distance=..3] pt.tracking_id 62
execute unless data entity @s Items[{Slot:12b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[62] run scoreboard players set @p[distance=..3] pt.tracking_id 63
execute unless data entity @s Items[{Slot:13b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[63] run scoreboard players set @p[distance=..3] pt.tracking_id 64
execute unless data entity @s Items[{Slot:14b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[64] run scoreboard players set @p[distance=..3] pt.tracking_id 65
execute unless data entity @s Items[{Slot:15b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[65] run scoreboard players set @p[distance=..3] pt.tracking_id 66
execute unless data entity @s Items[{Slot:16b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[66] run scoreboard players set @p[distance=..3] pt.tracking_id 67
execute unless data entity @s Items[{Slot:17b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[67] run scoreboard players set @p[distance=..3] pt.tracking_id 68
execute unless data entity @s Items[{Slot:18b,tag:{gui_item:1b}}] run scoreboard players remove @p[distance=..3] pt.gui_page 1
execute unless data entity @s Items[{Slot:19b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[68] run scoreboard players set @p[distance=..3] pt.tracking_id 69
execute unless data entity @s Items[{Slot:20b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[69] run scoreboard players set @p[distance=..3] pt.tracking_id 70
execute unless data entity @s Items[{Slot:21b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[70] run scoreboard players set @p[distance=..3] pt.tracking_id 71
execute unless data entity @s Items[{Slot:22b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[71] run scoreboard players set @p[distance=..3] pt.tracking_id 72
execute unless data entity @s Items[{Slot:23b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[72] run scoreboard players set @p[distance=..3] pt.tracking_id 73
execute unless data entity @s Items[{Slot:24b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[73] run scoreboard players set @p[distance=..3] pt.tracking_id 74
execute unless data entity @s Items[{Slot:25b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[74] run scoreboard players set @p[distance=..3] pt.tracking_id 75
execute unless data entity @s Items[{Slot:26b,tag:{gui_item:1b}}] run scoreboard players add @p[distance=..3] pt.gui_page 1

#> Drop items player put in the chest
execute unless data entity @s Items[{Slot:0b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:0b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:0b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:0b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:0b}]
execute unless data entity @s Items[{Slot:1b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:1b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:1b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:1b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:1b}]
execute unless data entity @s Items[{Slot:2b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:2b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:2b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:2b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:2b}]
execute unless data entity @s Items[{Slot:3b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:3b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:3b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:3b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:3b}]
execute unless data entity @s Items[{Slot:4b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:4b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:4b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:4b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:4b}]
execute unless data entity @s Items[{Slot:5b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:5b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:5b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:5b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:5b}]
execute unless data entity @s Items[{Slot:6b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:6b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:6b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:6b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:6b}]
execute unless data entity @s Items[{Slot:7b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:7b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:7b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:7b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:7b}]
execute unless data entity @s Items[{Slot:8b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:8b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:8b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:8b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:8b}]
execute unless data entity @s Items[{Slot:9b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:9b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:9b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:9b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:9b}]
execute unless data entity @s Items[{Slot:10b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:10b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:10b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:10b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:10b}]
execute unless data entity @s Items[{Slot:11b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:11b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:11b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:11b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:11b}]
execute unless data entity @s Items[{Slot:12b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:12b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:12b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:12b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:12b}]
execute unless data entity @s Items[{Slot:13b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:13b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:13b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:13b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:13b}]
execute unless data entity @s Items[{Slot:14b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:14b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:14b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:14b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:14b}]
execute unless data entity @s Items[{Slot:15b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:15b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:15b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:15b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:15b}]
execute unless data entity @s Items[{Slot:16b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:16b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:16b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:16b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:16b}]
execute unless data entity @s Items[{Slot:17b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:17b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:17b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:17b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:17b}]
execute unless data entity @s Items[{Slot:18b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:18b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:18b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:18b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:18b}]
execute unless data entity @s Items[{Slot:19b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:19b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:19b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:19b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:19b}]
execute unless data entity @s Items[{Slot:20b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:20b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:20b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:20b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:20b}]
execute unless data entity @s Items[{Slot:21b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:21b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:21b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:21b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:21b}]
execute unless data entity @s Items[{Slot:22b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:22b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:22b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:22b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:22b}]
execute unless data entity @s Items[{Slot:23b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:23b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:23b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:23b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:23b}]
execute unless data entity @s Items[{Slot:24b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:24b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:24b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:24b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:24b}]
execute unless data entity @s Items[{Slot:25b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:25b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:25b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:25b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:25b}]
execute unless data entity @s Items[{Slot:26b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:26b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:26b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:26b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}},sort=nearest] Item set from entity @s Items[{Slot:26b}]
teleport @e[type=minecraft:item,tag=gui_dropitem] @p[distance=..3]
clear @a[distance=..20] #player_tracker:gui_items{gui_item:1b}

#> Reset the gui
function player_tracker:gui/reset_gui3
execute unless score @p[distance=..3] pt.gui_page matches 3 run function player_tracker:gui/clear

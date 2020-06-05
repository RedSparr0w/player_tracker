#> Remove any gui items
kill @e[type=minecraft:item,nbt={Item:{tag:{gui_item:1b}}}]

#> Run our commands
execute unless data entity @s Items[{Slot:0b,tag:{gui_item:1b}}] run scoreboard players set @p[distance=..3] pt.tracking_id 0
execute unless data entity @s Items[{Slot:1b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[0] run scoreboard players set @p[distance=..3] pt.tracking_id 1
execute unless data entity @s Items[{Slot:2b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[1] run scoreboard players set @p[distance=..3] pt.tracking_id 2
execute unless data entity @s Items[{Slot:3b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[2] run scoreboard players set @p[distance=..3] pt.tracking_id 3
execute unless data entity @s Items[{Slot:4b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[3] run scoreboard players set @p[distance=..3] pt.tracking_id 4
execute unless data entity @s Items[{Slot:5b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[4] run scoreboard players set @p[distance=..3] pt.tracking_id 5
execute unless data entity @s Items[{Slot:6b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[5] run scoreboard players set @p[distance=..3] pt.tracking_id 6
execute unless data entity @s Items[{Slot:7b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[6] run scoreboard players set @p[distance=..3] pt.tracking_id 7
execute unless data entity @s Items[{Slot:8b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[7] run scoreboard players set @p[distance=..3] pt.tracking_id 8
execute unless data entity @s Items[{Slot:9b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[8] run scoreboard players set @p[distance=..3] pt.tracking_id 9
execute unless data entity @s Items[{Slot:10b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[9] run scoreboard players set @p[distance=..3] pt.tracking_id 10
execute unless data entity @s Items[{Slot:11b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[10] run scoreboard players set @p[distance=..3] pt.tracking_id 11
execute unless data entity @s Items[{Slot:12b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[11] run scoreboard players set @p[distance=..3] pt.tracking_id 12
execute unless data entity @s Items[{Slot:13b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[12] run scoreboard players set @p[distance=..3] pt.tracking_id 13
execute unless data entity @s Items[{Slot:14b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[13] run scoreboard players set @p[distance=..3] pt.tracking_id 14
execute unless data entity @s Items[{Slot:15b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[14] run scoreboard players set @p[distance=..3] pt.tracking_id 15
execute unless data entity @s Items[{Slot:16b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[15] run scoreboard players set @p[distance=..3] pt.tracking_id 16
execute unless data entity @s Items[{Slot:17b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[16] run scoreboard players set @p[distance=..3] pt.tracking_id 17
execute unless data entity @s Items[{Slot:18b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[17] run scoreboard players set @p[distance=..3] pt.tracking_id 18
execute unless data entity @s Items[{Slot:19b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[18] run scoreboard players set @p[distance=..3] pt.tracking_id 19
execute unless data entity @s Items[{Slot:20b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[19] run scoreboard players set @p[distance=..3] pt.tracking_id 20
execute unless data entity @s Items[{Slot:21b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[20] run scoreboard players set @p[distance=..3] pt.tracking_id 21
execute unless data entity @s Items[{Slot:22b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[21] run scoreboard players set @p[distance=..3] pt.tracking_id 22
execute unless data entity @s Items[{Slot:23b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[22] run scoreboard players set @p[distance=..3] pt.tracking_id 23
execute unless data entity @s Items[{Slot:24b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[23] run scoreboard players set @p[distance=..3] pt.tracking_id 24
execute unless data entity @s Items[{Slot:25b,tag:{gui_item:1b}}] if data storage pt:player_heads Items[24] run scoreboard players set @p[distance=..3] pt.tracking_id 25
execute unless data entity @s Items[{Slot:26b,tag:{gui_item:1b}}] run scoreboard players add @p[distance=..3] pt.gui_page 1

#> Drop items player put in the chest
execute unless data entity @s Items[{Slot:0b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:0b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:0b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:0b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:0b}]
execute unless data entity @s Items[{Slot:1b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:1b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:1b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:1b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:1b}]
execute unless data entity @s Items[{Slot:2b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:2b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:2b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:2b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:2b}]
execute unless data entity @s Items[{Slot:3b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:3b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:3b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:3b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:3b}]
execute unless data entity @s Items[{Slot:4b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:4b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:4b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:4b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:4b}]
execute unless data entity @s Items[{Slot:5b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:5b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:5b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:5b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:5b}]
execute unless data entity @s Items[{Slot:6b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:6b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:6b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:6b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:6b}]
execute unless data entity @s Items[{Slot:7b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:7b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:7b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:7b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:7b}]
execute unless data entity @s Items[{Slot:8b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:8b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:8b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:8b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:8b}]
execute unless data entity @s Items[{Slot:9b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:9b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:9b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:9b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:9b}]
execute unless data entity @s Items[{Slot:10b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:10b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:10b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:10b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:10b}]
execute unless data entity @s Items[{Slot:11b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:11b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:11b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:11b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:11b}]
execute unless data entity @s Items[{Slot:12b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:12b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:12b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:12b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:12b}]
execute unless data entity @s Items[{Slot:13b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:13b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:13b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:13b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:13b}]
execute unless data entity @s Items[{Slot:14b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:14b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:14b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:14b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:14b}]
execute unless data entity @s Items[{Slot:15b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:15b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:15b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:15b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:15b}]
execute unless data entity @s Items[{Slot:16b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:16b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:16b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:16b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:16b}]
execute unless data entity @s Items[{Slot:17b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:17b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:17b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:17b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:17b}]
execute unless data entity @s Items[{Slot:18b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:18b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:18b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:18b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:18b}]
execute unless data entity @s Items[{Slot:19b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:19b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:19b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:19b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:19b}]
execute unless data entity @s Items[{Slot:20b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:20b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:20b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:20b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:20b}]
execute unless data entity @s Items[{Slot:21b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:21b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:21b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:21b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:21b}]
execute unless data entity @s Items[{Slot:22b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:22b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:22b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:22b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:22b}]
execute unless data entity @s Items[{Slot:23b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:23b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:23b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:23b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:23b}]
execute unless data entity @s Items[{Slot:24b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:24b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:24b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:24b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:24b}]
execute unless data entity @s Items[{Slot:25b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:25b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:25b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:25b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:25b}]
execute unless data entity @s Items[{Slot:26b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:26b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{gui_item:1b},Count:1b},Tags:["gui_dropitem"]}
execute unless data entity @s Items[{Slot:26b,tag:{gui_item:1b}}] run execute if data entity @s Items[{Slot:26b}] run data modify entity @e[limit=1,type=minecraft:item,tag=gui_dropitem,sort=nearest] Item set from entity @s Items[{Slot:26b}]
teleport @e[type=minecraft:item,tag=gui_dropitem] @p[distance=..3]
clear @a[distance=..20] #player_tracker:gui_items{gui_item:1b}

#> Reset the gui
function player_tracker:gui/reset_gui1
execute unless score @p[distance=..3] pt.gui_page matches 1 run function player_tracker:gui/clear

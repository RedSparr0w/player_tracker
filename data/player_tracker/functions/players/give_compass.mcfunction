#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s pt.get_compass 0

#> Give the hunters a compass to track players
execute if data entity @s Inventory[{Slot:8b}] run give @s minecraft:compass{compass_type:"tracking_device",display:{Name:'[{"text":"Tracking Compass","italic":"false"}]',Lore:['{"text":"Locates nearby players.","italic": false}','{"text":"","italic": false}','{"text":"Wil only update in your hotbar/offhand.","color":"gray","italic": true}']},LodestoneTracked:0b}
execute unless data entity @s Inventory[{Slot:8b}] run item replace entity @s hotbar.8 with minecraft:compass{compass_type:"tracking_device",display:{Name:'[{"text":"Tracking Compass","italic":"false"}]',Lore:['{"text":"Locates nearby players.","italic": false}','{"text":"","italic": false}','{"text":"Will only update in your hotbar/offhand.","color":"gray","italic": true}']},LodestoneTracked:0b}

function player_tracker:players/player_list

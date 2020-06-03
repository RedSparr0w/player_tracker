#> Figure out who to track
scoreboard players operation player_to_track pt.tracking_id = @s pt.tracking_id
execute as @a[sort=arbitrary] if score @s pt.player_id = player_to_track pt.tracking_id run tag @s add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:overworld"}] run tag @a[limit=1,sort=nearest,nbt={Dimension:"minecraft:overworld"},distance=0.1..] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_end"}] run tag @a[limit=1,sort=nearest,nbt={Dimension:"minecraft:the_end"},distance=0.1..] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run tag @a[limit=1,sort=nearest,nbt={Dimension:"minecraft:the_nether"},distance=0.1..] add tracking

#>Debug
#tellraw @s [{"text":"Tracking: ","color":"green"},{"selector":"@a[tag=tracking]"}]

#> Update the compass
execute if entity @a[tag=tracking] run function player_tracker:compass/update

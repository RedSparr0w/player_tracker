#> Load the chunk our shulker box and sign is in and surround it with bedrock
forceload add 0 0
fill -1 1 2 1 3 0 minecraft:bedrock
setblock 0 1 1 minecraft:shulker_box
setblock 0 2 1 minecraft:crimson_sign

#> Create scoreboards for player info
##> Check when players join the game
scoreboard objectives add pt.joined_game minecraft.custom:minecraft.leave_game
##> Check if player ID is up to date
scoreboard objectives add pt.player_id dummy
scoreboard objectives add pt.reset dummy
data remove storage pt:player_heads Items

#> Add triggers
##> Show the menu
scoreboard objectives add pt.menu trigger
##> Show datapack information
scoreboard objectives add pt.info trigger
##> Get a compass
scoreboard objectives add pt.get_compass trigger
##> Tracking specific Players
scoreboard objectives add pt.tracking_id trigger
scoreboard objectives add pt.player_list trigger

#> Reset Player IDs
scoreboard players reset * pt.player_id
scoreboard players set #total_ids pt.player_id 0

#> Bump reset score
scoreboard players add count pt.reset 1

#> Show menu to players
execute as @a run function player_tracker:players/apply_id
execute as @a run function player_tracker:menu

#> Start tracking/updating compasses
function player_tracker:long_tick

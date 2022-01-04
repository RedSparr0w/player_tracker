#> Load the chunk our shulker box and sign is in and surround it with bedrock
forceload add 0 0
fill -1 -63 2 1 -61 0 minecraft:bedrock
setblock 0 -63 1 minecraft:shulker_box
setblock 0 -62 1 minecraft:crimson_sign

#> Create scoreboards for player info
##> Check when players join the game
scoreboard objectives add pt.joined_game minecraft.custom:minecraft.leave_game
##> Check if player ID is up to date
scoreboard objectives add pt.player_id dummy
scoreboard objectives add pt.reset dummy
data remove storage pt:player_heads Items
##> Reset Player IDs
scoreboard players reset * pt.player_id
scoreboard players set #total_ids pt.player_id 0

#> Gui
scoreboard objectives add pt.gui dummy
scoreboard players set #current_slot pt.gui 0
scoreboard players set #pages pt.gui 1
##> TODO: rename these
scoreboard objectives add pt.gui_count dummy
scoreboard objectives add pt.gui_page dummy

#> Add triggers
##> Show main menu
scoreboard objectives add pt.menu trigger
##> Show settings menu
scoreboard objectives add pt.settings trigger
##> Show datapack information
scoreboard objectives add pt.info trigger
##> Get a compass
scoreboard objectives add pt.get_compass trigger
##> Tracking specific Players
scoreboard objectives add pt.tracking_id trigger
scoreboard players reset * pt.tracking_id
scoreboard objectives add pt.player_list trigger

#> Bump reset score
scoreboard players add #count pt.reset 1

#> Load default settings
function player_tracker:settings/load

#> Show menu to players
execute as @a run function player_tracker:players/apply_id
execute as @a run function player_tracker:menu

#> Start tracking/updating compasses
function player_tracker:long_tick

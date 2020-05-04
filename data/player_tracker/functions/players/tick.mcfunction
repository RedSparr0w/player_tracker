execute as @a run function player_tracker:players/get_position

execute as @a[nbt={Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function player_tracker:compass/track_player

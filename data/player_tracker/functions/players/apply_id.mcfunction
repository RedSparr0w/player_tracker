scoreboard players operation @s pt.reset = count pt.reset
scoreboard players add total_ids pt.player_id 1
scoreboard players operation @s pt.player_id = total_ids pt.player_id
tag @s add player_id

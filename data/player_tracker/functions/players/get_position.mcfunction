execute if entity @s[nbt={Dimension:"minecraft:overworld"}] store result score @s pt.overworld_x run data get entity @s Pos[0]
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] store result score @s pt.overworld_z run data get entity @s Pos[2]

execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] store result score @s pt.the_nether_x run data get entity @s Pos[0]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] store result score @s pt.the_nether_z run data get entity @s Pos[2]

execute if entity @s[nbt={Dimension:"minecraft:the_end"}] store result score @s pt.the_end_x run data get entity @s Pos[0]
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] store result score @s pt.the_end_z run data get entity @s Pos[2]

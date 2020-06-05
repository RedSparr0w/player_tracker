teleport @e[type=minecraft:chest_minecart,tag=gui_container,distance=..3,sort=nearest] ~ ~-0.69 ~
tag @s add had_gui_item
tag @s remove has_gui_item

#> Lock all hoppers around the minecart
execute if block ~-1 ~-1 ~-1 minecraft:hopper run data merge block ~-1 ~-1 ~-1 {TransferCooldown:20d}
execute if block ~-1 ~-1 ~ minecraft:hopper run data merge block ~-1 ~-1 ~ {TransferCooldown:20d}
execute if block ~-1 ~-1 ~1 minecraft:hopper run data merge block ~-1 ~-1 ~1 {TransferCooldown:20d}
execute if block ~ ~-1 ~-1 minecraft:hopper run data merge block ~ ~-1 ~-1 {TransferCooldown:20d}
execute if block ~ ~-1 ~ minecraft:hopper run data merge block ~ ~-1 ~ {TransferCooldown:20d}
execute if block ~ ~-1 ~1 minecraft:hopper run data merge block ~ ~-1 ~1 {TransferCooldown:20d}
execute if block ~1 ~-1 ~-1 minecraft:hopper run data merge block ~1 ~-1 ~-1 {TransferCooldown:20d}
execute if block ~1 ~-1 ~ minecraft:hopper run data merge block ~1 ~-1 ~ {TransferCooldown:20d}
execute if block ~1 ~-1 ~1 minecraft:hopper run data merge block ~1 ~-1 ~1 {TransferCooldown:20d}
execute if block ~-1 ~-2 ~-1 minecraft:hopper run data merge block ~-1 ~-2 ~-1 {TransferCooldown:20d}
execute if block ~-1 ~-2 ~ minecraft:hopper run data merge block ~-1 ~-2 ~ {TransferCooldown:20d}
execute if block ~-1 ~-2 ~1 minecraft:hopper run data merge block ~-1 ~-2 ~1 {TransferCooldown:20d}
execute if block ~ ~-2 ~-1 minecraft:hopper run data merge block ~ ~-2 ~-1 {TransferCooldown:20d}
execute if block ~ ~-2 ~ minecraft:hopper run data merge block ~ ~-2 ~ {TransferCooldown:20d}
execute if block ~ ~-2 ~1 minecraft:hopper run data merge block ~ ~-2 ~1 {TransferCooldown:20d}
execute if block ~1 ~-2 ~-1 minecraft:hopper run data merge block ~1 ~-2 ~-1 {TransferCooldown:20d}
execute if block ~1 ~-2 ~ minecraft:hopper run data merge block ~1 ~-2 ~ {TransferCooldown:20d}
execute if block ~1 ~-2 ~1 minecraft:hopper run data merge block ~1 ~-2 ~1 {TransferCooldown:20d}

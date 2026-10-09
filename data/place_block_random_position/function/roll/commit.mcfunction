$clone $(x) $(y) $(z) $(x) $(y) $(z) ~ ~ ~ replace move

playsound entity.enderman.teleport block @a ~ ~ ~

summon marker ~ ~.5 ~ {Tags:[place_block_random_position_particle_emitter,place_block_random_position_new],data:{life:30}}
execute as @n[type=marker,tag=place_block_random_position_new] run data modify entity @s data.coords.x set from entity @s Pos[0]
execute as @n[type=marker,tag=place_block_random_position_new] run data modify entity @s data.coords.y set from entity @s Pos[1]
execute as @n[type=marker,tag=place_block_random_position_new] run data modify entity @s data.coords.z set from entity @s Pos[2]

$execute positioned $(x) $(y) $(z) run tp @n[type=marker,tag=place_block_random_position_new] ~ ~.5 ~

tag @e[type=marker,tag=place_block_random_position_new] remove place_block_random_position_new

data remove storage place_block_random_position:temp all
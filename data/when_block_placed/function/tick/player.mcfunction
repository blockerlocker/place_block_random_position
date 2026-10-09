kill @e[type=marker,tag=iris]

function iris:get_target

execute as @n[type=marker,tag=iris.targeted_block] at @s unless block ~ ~ ~ #replaceable run function when_block_placed:position_snap

execute store result score @s when_block_placed_x run data get entity @n[type=marker,tag=iris.targeted_block] Pos[0]
execute store result score @s when_block_placed_y run data get entity @n[type=marker,tag=iris.targeted_block] Pos[1]
execute store result score @s when_block_placed_z run data get entity @n[type=marker,tag=iris.targeted_block] Pos[2]
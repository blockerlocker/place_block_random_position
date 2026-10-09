$execute store result storage place_block_random_position:temp all.random_x int 1 run random value $(x_lower)..$(x_upper)
$execute store result storage place_block_random_position:temp all.random_z int 1 run random value $(z_lower)..$(z_upper)

function place_block_random_position:roll/random_pos with storage place_block_random_position:temp all
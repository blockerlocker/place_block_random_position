$execute unless predicate {type:"minecraft:location_check",predicate:{position:{y:{min:$(y_lower),max:$(y_upper)}}}} run return run function place_block_random_position:roll/init with storage place_block_random_position:temp all

execute store result storage place_block_random_position:temp all.placement_check int 1 run function place_block_random_position:roll/placement_check

execute if data storage place_block_random_position:temp all{placement_check:1} positioned ~ ~ ~ run return run function place_block_random_position:roll/commit with storage place_block_random_position:temp all

execute if data storage place_block_random_position:temp all{placement_check:0} positioned ~ ~1 ~ run return run function place_block_random_position:roll/crawl_loop with storage place_block_random_position:temp all

execute if data storage place_block_random_position:temp all{placement_check:2} positioned ~ ~-1 ~ run return run function place_block_random_position:roll/crawl_loop with storage place_block_random_position:temp all
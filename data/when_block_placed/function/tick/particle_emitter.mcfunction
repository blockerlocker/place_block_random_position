$particle trail{target:[$(x),$(y),$(z)],color:14421496,duration:20} ~ ~ ~ 0.35 0.35 0.35 0 3

data modify storage place_block_random_position:temp all.life set from entity @s data.life
data modify storage place_block_random_position:temp all.life set compute default integer {type:sub,left:{type:storage,storage:"place_block_random_position:temp",path:all.life},right:1}

data modify entity @s data.life set from storage place_block_random_position:temp all.life

execute unless predicate {type:"minecraft:int_value_check",value:{type:"minecraft:storage",storage:"place_block_random_position:temp",path:"all.life"},test:{min:1}} run kill @s
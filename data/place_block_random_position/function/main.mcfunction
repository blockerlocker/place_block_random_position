execute summon marker run function place_block_random_position:store_coords

data modify storage place_block_random_position:temp all.x_upper set compute default integer {type:add,inputs:[{type:storage,storage:"place_block_random_position:temp",path:all.x},{type:storage,storage:"place_block_random_position:settings",path:radius}]}
data modify storage place_block_random_position:temp all.y_upper set compute default integer {type:add,inputs:[{type:storage,storage:"place_block_random_position:temp",path:all.y},{type:storage,storage:"place_block_random_position:settings",path:radius}]}
data modify storage place_block_random_position:temp all.z_upper set compute default integer {type:add,inputs:[{type:storage,storage:"place_block_random_position:temp",path:all.z},{type:storage,storage:"place_block_random_position:settings",path:radius}]}
data modify storage place_block_random_position:temp all.x_lower set compute default integer {type:add,inputs:[{type:storage,storage:"place_block_random_position:temp",path:all.x},{type:negate,input:{type:storage,storage:"place_block_random_position:settings",path:radius}}]}
data modify storage place_block_random_position:temp all.y_lower set compute default integer {type:add,inputs:[{type:storage,storage:"place_block_random_position:temp",path:all.y},{type:negate,input:{type:storage,storage:"place_block_random_position:settings",path:radius}}]}
data modify storage place_block_random_position:temp all.z_lower set compute default integer {type:add,inputs:[{type:storage,storage:"place_block_random_position:temp",path:all.z},{type:negate,input:{type:storage,storage:"place_block_random_position:settings",path:radius}}]}

function place_block_random_position:roll/init with storage place_block_random_position:temp all
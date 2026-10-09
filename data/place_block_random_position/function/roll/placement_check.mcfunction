execute unless block ~ ~ ~ #replaceable run return 0

execute if block ~ ~ ~ #replaceable unless block ~ ~1 ~ #replaceable run return 1
execute if block ~ ~ ~ #replaceable unless block ~ ~-1 ~ #replaceable run return 1
execute if block ~ ~ ~ #replaceable unless block ~1 ~ ~ #replaceable run return 1
execute if block ~ ~ ~ #replaceable unless block ~-1 ~ ~ #replaceable run return 1
execute if block ~ ~ ~ #replaceable unless block ~1 ~ ~1 #replaceable run return 1
execute if block ~ ~ ~ #replaceable unless block ~1 ~ ~-1 #replaceable run return 1

execute if block ~ ~ ~ #replaceable if block ~ ~-1 ~ #replaceable run return 2
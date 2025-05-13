#Get world border size
execute store result storage uhc:pregeneration border int 1 run worldborder get

# Not default WB
tag @s add pregen
function uhc:border/pregeneration/start

# clear storage
data remove storage uhc:pregeneration border
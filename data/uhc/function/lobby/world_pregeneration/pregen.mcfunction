# Start of pregeneration sequence.

#Get world border size
execute store result storage uhc:pregeneration border int 1 run worldborder get

tag @s add uhc.pregen
function uhc:lobby/world_pregeneration/start

# clear storage
data remove storage uhc:pregeneration border
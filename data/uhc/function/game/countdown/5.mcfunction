# Description: 5 second countdown before game start.
# Called by: game\countdown\10.mcfunction

schedule function uhc:game/countdown/4 1s
title @a title {"text":"5","color":"#e25903"} 
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.1
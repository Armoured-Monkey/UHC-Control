# File: game/countdown/3.mcfunction
# Description: 3 second countdown before game start.
# Called by: game\countdown\4.mcfunction

schedule function uhc:game/countdown/2 1s
title @a title {"text":"3","color":"#e25903"} 
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.1
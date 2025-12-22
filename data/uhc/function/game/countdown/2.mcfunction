# Description: 2 second countdown before game start.
# Called by: game\countdown\3.mcfunction

schedule function uhc:game/countdown/1 1s
title @a title {"text":"2","color":"#e25903"} 
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.1
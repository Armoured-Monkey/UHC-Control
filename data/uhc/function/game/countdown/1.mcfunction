# Description: 1 second countdown before game start.
# Called by: game\countdown\2.mcfunction

schedule function #uhc:game/start 1s
title @a title {"text":"1","color":"#e25903"} 
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.1
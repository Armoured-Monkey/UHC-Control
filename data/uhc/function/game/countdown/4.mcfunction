# Description: 4 second countdown before game start.
# Called by: game\countdown\5.mcfunction

schedule function uhc:game/countdown/3 1s
title @a title {"text":"4","color":"#e25903"} 
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.1
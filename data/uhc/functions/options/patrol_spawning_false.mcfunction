# Patrol Spawning False/No
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule doPatrolSpawning false
title @a[tag=!global.ignore.gui] actionbar {"text":"Patrol Spawning: False", "color":"#dd760f"}
# Patrol Spawning True/Yes
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule doPatrolSpawning true
title @a[tag=!global.ignore.gui] actionbar {"text":"Patrol Spawning: True", "color":"#dd760f"}
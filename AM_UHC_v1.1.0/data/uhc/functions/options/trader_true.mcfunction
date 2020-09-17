# Spawn Wandering Trader True/Yes
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule doTraderSpawning true
title @a[tag=!global.ignore.gui] actionbar {"text":"Wandering Trader: True", "color":"#dd760f"}
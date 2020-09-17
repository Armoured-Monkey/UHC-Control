# Spawn Wandering Trader False/No
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule doTraderSpawning false
title @a[tag=!global.ignore.gui] actionbar {"text":"Wandering Trader: False", "color":"#dd760f"}
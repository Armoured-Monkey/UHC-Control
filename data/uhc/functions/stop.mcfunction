# Stops UHC mid-game

schedule clear uhc:times
tp @a[tag=!global.ignore.pos] 0 255 0
gamemode adventure @a[gamemode=!creative]
title @a[tag=!global.ignore.gui] title {"text":"UHC Stopped", "color":"#FFC300"}

# Called from Control Book
#
# Removes all players from teams (except spectators)

playsound minecraft:ui.button.click master @p ~ ~ ~
title @p actionbar {"text":"Emptied all Teams.", "color":"#E25903"}
team join uhc.0 @a[team=!uhc.spec]
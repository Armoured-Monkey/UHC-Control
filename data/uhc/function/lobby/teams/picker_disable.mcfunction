# Disables the team picker in the control book.
playsound minecraft:ui.button.click master @p[tag=!uhc.mute_sounds] ~ ~ ~
scoreboard players set picker uhc.config 0
title @p actionbar {"text":"Disabled Team Picker.", "color":"#E25903"}
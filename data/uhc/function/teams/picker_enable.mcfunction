# Enables the team picker in the control book.
playsound minecraft:ui.button.click master @p[tag=!uhc.mute_sounds] ~ ~ ~
scoreboard players set picker uhc.config 1
title @p actionbar {"text":"Enabled Team Picker.", "color":"#E25903"}
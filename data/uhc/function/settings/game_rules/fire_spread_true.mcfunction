# Fire Spread True/Yez
playsound minecraft:ui.button.click master @p[tag=!uhc.mute_sounds] ~ ~ ~
gamerule minecraft:fire_spread_radius_around_player 128
execute in minecraft:the_nether run gamerule minecraft:fire_spread_radius_around_player 128
data modify storage uhc_control fire_spread set value "True"
kill @e[nbt={UUID:[I;659334407,1518945995,-1612408713,-1747041718]}]
summon text_display 0.5 255.0 -24.0 {text:[{"text":"Fire Spread: ","color":"#7f3202","bold":false},{"storage":"uhc_control","nbt":"fire_spread","color":"#d9b35c"}],alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;659334407,1518945995,-1612408713,-1747041718]}
title @p actionbar {"text":"Fire Spread: True", "color":"#E25903"}
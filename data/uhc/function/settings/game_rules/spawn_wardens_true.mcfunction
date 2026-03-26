# Spawn Wardens True/Yes
playsound minecraft:ui.button.click master @p[tag=!uhc.mute_sounds] ~ ~ ~
gamerule minecraft:spawn_wardens true
execute in minecraft:the_nether run gamerule minecraft:spawn_wardens true
data modify storage uhc_control spawn_wardens set value "True"
kill @e[nbt={UUID:[I;247406618,1206536646,-1953622359,553932752]}]
summon text_display 0.5 251.0 -24.0 {text:[{"text":"Spawn Wardens: ","color":"#7f3202","bold":false},{"storage":"uhc_control","interpret":true,"nbt":"spawn_wardens","color":"#d9b35c"}],alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;247406618,1206536646,-1953622359,553932752]}
title @p actionbar {"text":"Spawn Wardens: True", "color":"#E25903"}
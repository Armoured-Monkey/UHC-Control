# Locator Bar True/Yes
playsound minecraft:ui.button.click master @p[tag=!uhc.mute_sounds] ~ ~ ~
gamerule minecraft:locator_bar true
execute in minecraft:the_nether run gamerule minecraft:locator_bar true
data modify storage uhc_control locator_bar set value "True"
kill @e[nbt={UUID:[I;635504390,-1545123575,-2070629346,-1734433943]}]
summon text_display 0.5 254.5 -24.0 {text:[{"text":"Locator Bar: ","color":"#7f3202","bold":false},{"storage":"uhc_control","interpret":true,"nbt":"locator_bar","color":"#d9b35c"}],alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;635504390,-1545123575,-2070629346,-1734433943]}
title @p actionbar {"text":"Locator Bar: True", "color":"#E25903"}
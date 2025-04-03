# Insomnia/Phantom Spawning True/Yes
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule doInsomnia true
data modify storage uhc_control phantoms_spawn set value "True"
kill @e[nbt={UUID:[I;-2020445129,-1558622637,-1893738498,594653552]}]
summon text_display 0.5 253.5 -24.0 {text:"[{\"text\":\"Phantoms Spawn: \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"uhc_control\",\"nbt\":\"phantoms_spawn\",\"color\":\"#d9b35c\"}]",alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-2020445129,-1558622637,-1893738498,594653552]}
title @p actionbar {"text":"Phantom Spawning: True", "color":"#E25903"}
# Spawn Wandering Trader False/No
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule doTraderSpawning false
data modify storage uhc_control traders_spawn set value "False"
kill @e[nbt={UUID:[I;-456763059,-622703719,-1834612025,710600891]}]
summon text_display 0.5 252.0 -24.0 {text:"[{\"text\":\"Wandering Traders Spawn: \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"uhc_control\",\"nbt\":\"traders_spawn\",\"color\":\"#d9b35c\"}]",alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-456763059,-622703719,-1834612025,710600891]}
title @p actionbar {"text":"Wandering Trader: False", "color":"#E25903"}
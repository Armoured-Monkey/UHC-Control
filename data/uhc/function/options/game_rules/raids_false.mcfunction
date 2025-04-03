# Raids False/No
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule disableRaids true
data modify storage uhc_control raids set value "False"
kill @e[nbt={UUID:[I;-995888190,-337098895,-1546459639,-829544327]}]
summon text_display 0.5 253.0 -24.0 {text:"[{\"text\":\"Raids Occur: \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"uhc_control\",\"nbt\":\"raids\",\"color\":\"#d9b35c\"}]",alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-995888190,-337098895,-1546459639,-829544327]}
title @p actionbar {"text":"Raids: False", "color":"#E25903"}
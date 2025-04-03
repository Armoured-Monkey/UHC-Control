# Friendly Fire True/Yes
playsound minecraft:ui.button.click master @p ~ ~ ~
team modify uhc.1 friendlyFire true
team modify uhc.2 friendlyFire true
team modify uhc.3 friendlyFire true
team modify uhc.4 friendlyFire true
team modify uhc.5 friendlyFire true
team modify uhc.6 friendlyFire true
team modify uhc.7 friendlyFire true
team modify uhc.8 friendlyFire true
team modify uhc.9 friendlyFire true
team modify uhc.10 friendlyFire true
team modify uhc.11 friendlyFire true
team modify uhc.12 friendlyFire true
data modify storage uhc_control friendly_fire set value "True"
kill @e[nbt={UUID:[I;-1703078911,1353270641,-1191100437,1996316231]}]
summon text_display 0.5 254.5 -24.0 {text:"[{\"text\":\"Friendly Fire: \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"uhc_control\",\"nbt\":\"friendly_fire\",\"color\":\"#d9b35c\"}]",alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-1703078911,1353270641,-1191100437,1996316231]}
title @p actionbar {"text":"Friendly Fire: True", "color":"#E25903"}
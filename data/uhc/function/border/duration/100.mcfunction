playsound minecraft:ui.button.click master @p ~ ~ ~
scoreboard players set duration uhc.border 100
kill @e[nbt={UUID:[I;714262775,-77052981,-1437492971,195981867]}]
summon text_display 0.5 254.5 24.0 {text:"[{\"text\":\"Shrink Duration: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"duration\",\"objective\": \"uhc.border\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[-2,0,0,0,0,2,0,0,0,0,-2,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;714262775,-77052981,-1437492971,195981867]}
title @p actionbar {"text":"Shrink duration is 100 minutes.", "color":"#E25903"}
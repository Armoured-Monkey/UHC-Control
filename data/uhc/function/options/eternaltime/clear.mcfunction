playsound minecraft:ui.button.click master @p ~ ~ ~
scoreboard players set Eternal uhc.config -1
scoreboard players set Eternal_compare uhc.config -1
kill @e[nbt={UUID:[I;1026762554,-465483100,-1624571661,-1191739035]}]
summon text_display 24.0 254.0 0.5 {text:"[{\"text\":\"Eternal Day/Night:\",\"color\":\"#7f3202\",\"bold\":false},{\"text\":\" None\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;1026762554,-465483100,-1624571661,-1191739035]}
title @p actionbar {"text":"No Eternal Day/Night.", "color":"#E25903"}
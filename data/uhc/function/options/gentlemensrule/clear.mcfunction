playsound minecraft:ui.button.click master @p ~ ~ ~
scoreboard players set GRule uhc.config -1
kill @e[nbt={UUID:[I;-778830449,1364938546,-1695032606,-1702564313]}]
summon text_display 24.0 254.5 0.5 {text:"[{\"text\":\"Gentleman's Rule: \",\"color\":\"#7f3202\",\"bold\":false},{\"text\":\" None\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-778830449,1364938546,-1695032606,-1702564313]}
title @p actionbar {"text":"No Gentleman's Rule.", "color":"#E25903"}
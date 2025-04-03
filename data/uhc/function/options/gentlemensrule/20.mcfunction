playsound minecraft:ui.button.click master @p ~ ~ ~
scoreboard players set GRule uhc.config 20
scoreboard players set GRule_compare uhc.config 20
kill @e[nbt={UUID:[I;-778830449,1364938546,-1695032606,-1702564313]}]
summon text_display 24.0 254.5 0.5 {text:"[{\"text\":\"Gentleman's Rule: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"GRule\",\"objective\": \"uhc.config\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-778830449,1364938546,-1695032606,-1702564313]}
title @p actionbar {"text":"Gentleman's Rule for 20 minutes.", "color":"#E25903"}
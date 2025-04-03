playsound minecraft:ui.button.click master @p ~ ~ ~
scoreboard players set shrink uhc.border 80
kill @e[nbt={UUID:[I;-1097050529,768885997,-1809401467,-649032576]}]
summon text_display 0.5 255.0 24.0 {text:"[{\"text\":\"Shrink Begins: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"shrink\",\"objective\": \"uhc.border\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[-2,0,0,0,0,2,0,0,0,0,-2,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;-1097050529,768885997,-1809401467,-649032576]}
title @p actionbar {"text":"Shrink starts at 80 minutes.", "color":"#E25903"}
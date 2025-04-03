scoreboard players set finish uhc.border 64
kill @e[nbt={UUID:[I;-604348910,-790216506,-1848384586,-1032990147]}]
summon text_display 0.5 254.0 24.0 {text:"[{\"text\":\"Final Size: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"finish\",\"objective\": \"uhc.border\"},\"color\":\"#d9b35c\"},{\"text\":\" blocks across\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[-2,0,0,0,0,2,0,0,0,0,-2,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;-604348910,-790216506,-1848384586,-1032990147]}
title @p actionbar {"text":"World Border Updated", "color":"#E25903"}
playsound minecraft:ui.button.click master @p ~ ~ ~
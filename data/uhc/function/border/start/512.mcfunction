scoreboard players set start uhc.border 512
worldborder set 512
title @p actionbar {"text":"World Border Updated", "color":"#E25903"}
kill @e[nbt={UUID:[I;-583357493,1891715366,-1614367628,1677338320]}]
summon text_display 0.5 255.5 24.0 {text:"[{\"text\":\"Starting Size: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"start\",\"objective\": \"uhc.border\"},\"color\":\"#d9b35c\"},{\"text\":\" blocks across\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[-2,0,0,0,0,2,0,0,0,0,-2,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;-583357493,1891715366,-1614367628,1677338320]}
playsound minecraft:ui.button.click master @p ~ ~ ~
playsound minecraft:ui.button.click master @p ~ ~ ~
scoreboard players set marker uhc.config 20
scoreboard players set marker_compare uhc.config 20
kill @e[nbt={UUID:[I;511120394,270549031,-1555057650,-1917820725]}]
summon text_display 24.0 255.5 0.5 {text:"[{\"text\":\"Minute Markers: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"marker\",\"objective\": \"uhc.config\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;511120394,270549031,-1555057650,-1917820725]}
title @p actionbar {"text":"Minute Markers every 20 minutes.", "color":"#E25903"}
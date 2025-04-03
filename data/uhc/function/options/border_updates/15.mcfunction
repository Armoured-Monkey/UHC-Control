playsound minecraft:ui.button.click master @p ~ ~ ~
scoreboard players set border_status uhc.config 15
scoreboard players set border_status_compare uhc.config 15
kill @e[nbt={UUID:[I;439079384,-128103514,-1924170241,-440128255]}]
summon text_display 24.0 255.0 0.5 {text:"[{\"text\":\"Border Size Updates: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"border_status\",\"objective\": \"uhc.config\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;439079384,-128103514,-1924170241,-440128255]}
title @p actionbar {"text":"Border status updates every 15 minutes.", "color":"#E25903"}
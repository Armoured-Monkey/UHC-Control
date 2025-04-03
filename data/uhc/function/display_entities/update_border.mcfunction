# updates the display entity for Minute Marker config
# Called when there has been a custom time set for the minute markers.

kill @e[nbt={UUID:[I;439079384,-128103514,-1924170241,-440128255]}]
summon text_display 24.0 255.0 0.5 {text:"[{\"text\":\"Border Size Updates: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"border_status\",\"objective\": \"uhc.config\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;439079384,-128103514,-1924170241,-440128255]}
execute store result score border_status_compare uhc.config run scoreboard players get border_status uhc.config

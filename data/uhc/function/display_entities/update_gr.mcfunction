# updates the display entity for Minute Marker config
# Called when there has been a custom time set for the minute markers.

kill @e[nbt={UUID:[I;-778830449,1364938546,-1695032606,-1702564313]}]
summon text_display 24.0 254.5 0.5 {text:"[{\"text\":\"Gentleman's Rule: \",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"GRule\",\"objective\": \"uhc.config\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-778830449,1364938546,-1695032606,-1702564313]}
execute store result score GRule_compare uhc.config run scoreboard players get GRule uhc.config

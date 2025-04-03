# updates the display entity for Minute Marker config
# Called when there has been a custom time set for the minute markers.

kill @e[nbt={UUID:[I;1026762554,-465483100,-1624571661,-1191739035]}]
summon text_display 24.0 254.0 0.5 {text:"[{\"text\":\"Eternal \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"minecraft:uhc_control\",\"nbt\": \"eternal\",\"color\":\"#7f3202\",\"bold\":false},{\"score\":{\"name\":\"Eternal\",\"objective\": \"uhc.config\"},\"color\":\"#d9b35c\"},{\"text\":\" minutes\",\"color\":\"#d9b35c\",\"bold\":false}]",alignment:"center",background:0,transformation:[0,0,-2,0,0,2,0,0,2,0,0,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;1026762554,-465483100,-1624571661,-1191739035]}
execute store result score Eternal_compare uhc.config run scoreboard players get Eternal uhc.config

# Natural Regeneration False/No
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule naturalRegeneration false
data modify storage uhc_control regeneration set value "False"
kill @e[nbt={UUID:[I;-642763213,-1251129329,-1482814188,143828414]}]
summon text_display 0.5 252.5 -24.0 {text:"[{\"text\":\"Natural Regeneration: \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"uhc_control\",\"nbt\":\"regeneration\",\"color\":\"#d9b35c\"}]",alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-642763213,-1251129329,-1482814188,143828414]}
title @p actionbar {"text":"Natural Regeneration: False", "color":"#E25903"}
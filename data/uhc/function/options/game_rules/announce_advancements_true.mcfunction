# Announce Advancements True/Yes
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule announceAdvancements true
data modify storage uhc_control announce_advancements set value "True"
kill @e[nbt={UUID:[I;-1905061496,-196459959,-2045128780,1501340613]}]
summon text_display 0.5 255.5 -24.0 {text:"[{\"text\":\"Announce Advancements: \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"uhc_control\",\"nbt\":\"announce_advancements\",\"color\":\"#d9b35c\"}]",alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;-1905061496,-196459959,-2045128780,1501340613]}
title @p actionbar {"text":"Announce Advancements: True", "color":"#E25903"}
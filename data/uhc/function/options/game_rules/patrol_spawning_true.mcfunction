# Patrol Spawning True/Yes
playsound minecraft:ui.button.click master @p ~ ~ ~
gamerule doPatrolSpawning true
data modify storage uhc_control patrol_spawning set value "True"
kill @e[nbt={UUID:[I;1214489126,1669417638,-2121055645,-1811742084]}]
summon text_display 0.5 254.0 -24.0 {text:"[{\"text\":\"Pillager Patrols: \",\"color\":\"#7f3202\",\"bold\":false},{\"storage\":\"uhc_control\",\"nbt\":\"patrol_spawning\",\"color\":\"#d9b35c\"}]",alignment:"center",background:0,transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1],billboard:"fixed",Tags:[uhc.display],UUID:[I;1214489126,1669417638,-2121055645,-1811742084]}
title @p actionbar {"text":"Patrol Spawning: True", "color":"#E25903"}
# Lobby Centre
summon item_display 0.5 258.0 0.5 {item:{id:"minecraft:enchanted_golden_apple"},item_display:"fixed",transformation:[5,0,0,0,0,5,0,0,0,0,5,0,0,0,0,1], billboard:"vertical", Tags:[uhc.display],UUID:[I;-1066319,428101355,-1968534997,931900722]}
summon text_display 0.5 254.0 0.5 {text:"{\"text\":\" 🗡 UHC Control ☠ \",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[5,0,0,0,0,5,0,0,0,0,5,0,0,0,0,1], billboard:"vertical", Tags:[uhc.display],UUID:[I;542340160,-2027599738,-1394584897,-677961072]}

# Configuration Display Titles
## Options
summon text_display 0.5 256.0 -24.0 {text:"{\"text\":\"Options\",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[4,0,0,0,0,4,0,0,0,0,4,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;1458930658,-1441839524,-1227370247,-1219802790]}

## Timings
summon text_display 24.0 256.0 0.5 {text:"{\"text\":\"Timings\",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[0,0,-4,0,0,4,0,0,4,0,0,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;87417036,1207978772,-1756642334,-1515570105]}

## World Border
summon text_display 0.5 256.0 24.0 {text:"{\"text\":\"World Border\",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[-4,0,0,0,0,4,0,0,0,0,-4,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;-576980596,1349141772,-1856172965,1306905826]}

## Loaded Expansions
summon text_display -24.0 256.0 0.5 {text:"{\"text\":\"Expansions\",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[0,0,4,0,0,4,0,0,-4,0,0,0,0,0,0,1], billboard:"fixed", Tags:[uhc.display],UUID:[I;1092512712,2021344439,-1279314864,228132161]}
schedule function uhc:display_entities/expansions_list 10t
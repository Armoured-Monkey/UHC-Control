# Called from Control Book
# Adds spectator elements to the lobby

# Gold Blocks
## Player
setblock 22 250 -23 gold_block replace
## Spectator
setblock -23 250 -23 gold_block replace

# Display Entities
## Player
summon text_display 22.5 255.0 -22.5 {text:"{\"text\":\"Take Part!\",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[4,0,0,0,0,4,0,0,0,0,4,0,0,0,0,1], billboard:"vertical", Tags:[uhc.display,uhc.display.spectating],UUID:[I;-1035166711,-1123401092,-1959985821,-1289785904]}
## Spectator
summon text_display -22.5 255.0 -22.5 {text:"{\"text\":\"Spectate!\",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[4,0,0,0,0,4,0,0,0,0,4,0,0,0,0,1], billboard:"vertical", Tags:[uhc.display,uhc.display.spectating],UUID:[I;-775389377,755912040,-1279102198,1243611198]}

# Called from Control Book
# Removes spectator elements to the lobby

# Barrier Blocks
## Player
setblock 22 250 -23 barrier replace
## Spectator
setblock -23 250 -23 barrier replace

# Kill Display Entities
kill @e[tag=uhc.display.spectating]
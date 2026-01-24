# Description: Handles new players when they join the lobby before the game starts.
# Called by: lobby/second through function tag.
# Selector: @a[tag=!uhc.joined] => @s runs on self

# Teleport to lobby.
tp @s 0 253 0

# Join team 0
team join uhc.0 @s

# Add player joined tag
tag @s add uhc.joined
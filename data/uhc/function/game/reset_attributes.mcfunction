# File: reset_attributes.mcfunction
# Description: Resets the attributes of players that have been altered during the lobby and countdown.
# Called by: game\countdown\begin.mcfunction and game\timer\second.mcfunction (for players without uhc.attributes_reset tag)

attribute @s minecraft:movement_speed base reset
attribute @s minecraft:jump_strength base reset
tag @s add uhc.attributes_reset
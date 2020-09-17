# Unistall and remove physical traces of the data pack.

# Set lobby to air
execute positioned 0 255 0 run fill ~-12 250 ~-12 ~11 253 ~11 air

# Delete Teams
team remove uhc.0
team remove uhc.1
team remove uhc.2
team remove uhc.3
team remove uhc.4
team remove uhc.5
team remove uhc.6
team remove uhc.7
team remove uhc.8
team remove uhc.9
team remove uhc.10
team remove uhc.11
team remove uhc.12

# Delete Scoreboards
scoreboard objectives remove uhc.deaths
scoreboard objectives remove uhc.health
scoreboard objectives remove uhc.kills
scoreboard objectives remove uhc.border
scoreboard objectives remove uhc.lobby
scoreboard objectives remove uhc.team
scoreboard objectives remove uhc.timer 
scoreboard objectives remove uhc.interface

# Announce
tellraw @a {"text":"It is now safe to remove the data pack", "color":"#FFC300"}

# Disable
datapack disable "file/AM_UHC_v1.0.3.zip"
# Unistall and remove physical traces of the data pack.

# Remove Scheduled Functions
schedule clear uhc:timer/second
schedule clear uhc:lobby_second
schedule clear uhc:timer/minute

# Set lobby to air
execute positioned 0 255 0 run fill ~-25 250 ~-25 ~24 253 ~24 air
kill @e[tag=uhc.display]

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
team remove uhc.spec

# Delete Scoreboards
scoreboard objectives remove uhc.deaths
scoreboard objectives remove uhc.health
scoreboard objectives remove uhc.kills
scoreboard objectives remove uhc.border
scoreboard objectives remove uhc.lobby
scoreboard objectives remove uhc.team
scoreboard objectives remove uhc.timer 
scoreboard objectives remove uhc.interface
scoreboard objectives remove uhc.config
scoreboard objectives remove uhc.stats

# Remove Tags for online Players
tag @a remove uhc.player
tag @a remove uhc.spectator

# Delete Storage
data remove storage minecraft:uhc_control announce_advancements
data remove storage minecraft:uhc_control fire_spread
data remove storage minecraft:uhc_control friendly_fire
data remove storage minecraft:uhc_control patrol_spawning
data remove storage minecraft:uhc_control phantoms_spawn
data remove storage minecraft:uhc_control raids
data remove storage minecraft:uhc_control regeneration
data remove storage minecraft:uhc_control traders_spawn
data remove storage minecraft:uhc_control eternal
data remove storage minecraft:uhc_control expansions

# Announce
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @s {"text":"Traces of UHC Control have been removed, it is safe to disable this data pack."}
tellraw @s {"text":"Please check that your world spawn, gamerules and difficulty are correct.","color":"#e25903"}
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
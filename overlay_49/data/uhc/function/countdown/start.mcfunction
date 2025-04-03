# Start Procedure

# Revert gamerules set for pre-game lobby
gamerule randomTickSpeed 3
gamerule doDaylightCycle true
gamerule fallDamage true

# Set everyone in team 0 to spectator team
team join uhc.spec @a[team=uhc.0]

tag @a[team=!uhc.spec] add uhc.player
tag @a[team=uhc.spec] add uhc.spectator

# Team 11 = Spectator
gamemode spectator @a[team=uhc.spec]

scoreboard players set minutes uhc.timer -1
scoreboard players set Timer uhc.stats -1
scoreboard players set marker uhc.timer -1
scoreboard players set border_status uhc.timer -1
time set 0

execute as @a[tag=uhc.player] run attribute @s minecraft:movement_speed base set 0.10000000149011612
execute as @a[tag=uhc.player] run attribute @s minecraft:jump_strength base set 0.41999998688697815
effect give @a[tag=uhc.player] minecraft:regeneration 5 100 true 
effect give @a[tag=uhc.player] minecraft:saturation 3 1 true 
title @a title {"text":"GO!","color":"#00B000"}
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1

execute store result score AlivePlayers uhc.stats if entity @a[tag=uhc.player]
execute store result score Spectators uhc.stats if entity @a[tag=uhc.spectator]

effect give @a[team=uhc.spec] night_vision infinite 1 true

scoreboard objectives setdisplay sidebar.team.gray uhc.stats
execute if score stats_scoreboard uhc.config matches 1 run scoreboard objectives setdisplay sidebar uhc.stats

# Remove lobby and display entities
execute positioned 0 255 0 run fill ~-25 250 ~-25 ~24 253 ~24 air
kill @e[tag=uhc.display]

# Schedule timings
schedule function uhc:timer/second 1t
schedule function uhc:timer/minute 1t
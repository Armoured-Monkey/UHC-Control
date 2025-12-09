# Start Procedure

# Revert gamerules set for pre-game lobby
gamerule minecraft:random_tick_speed 3
gamerule minecraft:advance_time true
gamerule minecraft:fall_damage true

# Scoreboard settings
scoreboard players set minutes uhc.timer -1
scoreboard players set Timer uhc.stats -1
scoreboard players set marker uhc.timer -1
scoreboard players set border_status uhc.timer -1
scoreboard players set game_start uhc.interface 1

time set 0

execute as @a[tag=uhc.player] run function uhc:reset_attributes
effect give @a[tag=uhc.player] minecraft:regeneration 5 100 true 
effect give @a[tag=uhc.player] minecraft:saturation 3 1 true 
title @a title {"text":"GO!","color":"#00B000"}
tellraw @a ["",{"text":"Gentleman's Rule: No PvP until ", "color":"#d9b35c"},{"score":{"name":"GRule","objective": "uhc.config"}, "color": "#e25903", "bold": true},{"text":" minutes have elapsed.", "color":"#d9b35c"}]
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
schedule function #uhc:game_second 1t
schedule function #uhc:game_minute 1t
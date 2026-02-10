# Handles timings of events
# Schedules self with time 1 minute

# Timers
scoreboard players add minutes uhc.timer 1
scoreboard players add Timer uhc.stats 1
scoreboard players add marker uhc.timer 1
execute if score shrink uhc.border <= minutes uhc.timer run scoreboard players add border_status uhc.timer 1

# Gentleman's Rule
execute if score GRule uhc.config = minutes uhc.timer run schedule function uhc:game/timer/gentlemans_rule_ends 3s

# World Border
execute store result score Current uhc.border run worldborder get
execute if score shrink uhc.border = minutes uhc.timer run tellraw @a {"text":"World border has started shrinking.", "color":"#E25903"}
execute if score shrink uhc.border = minutes uhc.timer run function uhc:game/timer/border_shrink

# Eternal Time
# Day - Night uhc.timer = 0
execute if score Eternal uhc.config = minutes uhc.timer if score Night uhc.config matches 0 run function uhc:game/eternal_time/day
# Night - Night uhc.timer = 1
execute if score Eternal uhc.config = minutes uhc.timer if score Night uhc.config matches 1 run function uhc:game/eternal_time/night

# Detect markers and border status updates
execute if score marker uhc.timer = marker uhc.config run function #uhc:game/marker
execute if score shrink uhc.border <= minutes uhc.timer if score border_status uhc.timer = border_status uhc.config run function uhc:game/marker/border_status

# Update Stats scoreboard
execute store result score AlivePlayers uhc.stats if entity @a[tag=uhc.player]
execute store result score Spectators uhc.stats if entity @a[tag=uhc.spectator]

effect give @a[team=uhc.spec] night_vision infinite 1 true

# Schedule
schedule function #uhc:game/minute 60s